function A = BuildMatrix(Epsilon_x, Epsilon_y, Display, Camera, Do)

%note PSF size is just a rough measure of how many pixels does the circle
%of confusion covers. It is used for allocating memory(enhance
%performance). Consider radius 10(diameter 20), roughly 10^2 * 0.78 =
%78 pixels.
psf_size = 240;

%how many extra neighboring pixels do we want to consider? *Usually* I set 
%it between 5 to 10, larger number doesn't affect correctness, but impact
%performance a bit. Larger number is required for strong perspective
%viewing or strong defocus.
XtraPix = 5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now start making sparse matrix for projection
% so Sampling ==> how many samples on the lens per mm, 50 = every 20 micron
Sampling = 20; %4 samples on the lens per mm; for 4mm pupil has 100 rays
Area = length(-Camera.Aperture/2:(1/Sampling):Camera.Aperture/2)^2*0.7854; %rejection sampling  
Area_1 = 1/Area;
ind_r = zeros(Camera.Sensor_Res^2*psf_size*2,1);
ind_c = zeros(Camera.Sensor_Res^2*psf_size*2,1);
val_s = zeros(Camera.Sensor_Res^2*psf_size*2,1);
index = 1;
%Generates sampling on the sensor plane
% I think the proper way to generate Us/Vs is to first 
% assume a re-parameterized LF: UV at lens, and XY at sensor
% and then parameterized at the sensor standard LF, and back
% propagate.
% Now get sample, since X,Y are separable
Vs = -Camera.Aperture/2:(1/Sampling):Camera.Aperture/2;   %a row vector  
Us = -Camera.Aperture/2:(1/Sampling):Camera.Aperture/2;   %a row vector     

%The following optimize Version_1.
[us, vs] = meshgrid(Us, Vs);
Z = zeros(size(us));                
Z( (us).^2 + (vs).^2 < (Camera.Aperture/2)^2 ) = 1;  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
% angular resolution:    
HBVals = Angular_BoundaryExt2(Display.Angular_HRes, Display.Screen_Pixel_Pitch, Display.Depth, XtraPix);
VBVals = Angular_BoundaryExt2(Display.Angular_VRes, Display.Screen_Pixel_Pitch, Display.Depth, XtraPix);


disp('start y-v backward transport'); % 1st(top) layer lenticular sheet
[Yo, Vo] = BackwardTransportExt3(Epsilon_y, HBVals, Display, Camera, Vs, Do, XtraPix);
disp('start x-u backward transport'); % 1st(top) layer lenticular sheet
[Xo, Uo] = BackwardTransportExt3(Epsilon_x, VBVals, Display, Camera, Us, Do, XtraPix);
%Sanity check
Xo(Xo < 1) = 1;    Xo(Xo > Display.Screen_Res) = Display.Screen_Res;
Yo(Yo < 1) = 1;    Yo(Yo > Display.Screen_Res) = Display.Screen_Res;

%t = zeros(Sensor_Res, Sensor_Res*Angular_VRes);
disp('start sampling and build projection matrix');
for(j = 1:Camera.Sensor_Res)       % for each row    
    display(sprintf('Progress = %3.0f %%', j/Camera.Sensor_Res*100))
    for(i = 1:Camera.Sensor_Res)   % for each col        
        %now aggregate the x,y
        [xo, yo] = meshgrid(Yo(:,j), Xo(:,i));    %transposed.
        pixels = [reshape(xo, [], 1) reshape(yo, [] ,1)];
        %now aggregate the u,v
        [uo, vo] = meshgrid(Uo(:,j), Vo(:,i));
        angles = [reshape(uo, [], 1) reshape(vo, [] ,1)];                
        %now removes samples that was blocked by aperture.
        samples = [pixels angles];
        samples = samples(reshape(Z, [], 1) ~=0 , :);   
        w = size(samples,1);
        %accunmulate the sampling
        [b,m,n] = unique(samples, 'rows');
        CELL =[b accumarray(n,1)];        
        %making the sparse matrix
        for(r = 1:size(b,1))
            %col-major
            index0 = (i-1)*Camera.Sensor_Res + (j-1);
            index1 = ((CELL(r,2)-1)*Display.Screen_Res  + (CELL(r,1)-1)  )*Display.Angular_VRes*Display.Angular_HRes;
            index2 = ((CELL(r,4)-1)*Display.Angular_VRes + (CELL(r,3)-1)  );
            %P(index0+1, index1+index2+1 ) = CELL(r,5)*Area_1;
            ind_r(index) = index0+1;
            ind_c(index) = index1+index2+1;
            val_s(index) = CELL(r,5)/w; %actually when you have the final radiance normalization, this doesn't matter
            index        = index + 1;
        end
    end
end
disp('start making sparse system matrix');
clear CELL angles samples;
clear xo yo uo vo Xo Yo Vo Uo Vs Us Z;
clear Screen_Sampling Sensor_Sampling Angular_Sampling;

A = sparse(ind_r(1:index-1), ind_c(1:index-1), val_s(1:index-1), ...
            Camera.Sensor_Res^2, Display.Screen_Res^2*Display.Angular_VRes*Display.Angular_HRes);

clear ind_r ind_c val_s;  

