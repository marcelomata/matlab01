close all;  clear all;
addpath('./LBFGSB');
img                 = im2double(imread('images/original/0084.png'));

% x = -5 ~ +5, y = -5 ~ +5 for off-axis optimization.
% Different setting (distance/defocus/etc) might requires larger value
RANGE = 5;  

USE_PRECOMPUTATION  =  (menu('Choose an operation(default:1)','(1)Precompute Matrices','(2)Compute Prefiltering Only') - 1)
optRange            =  (menu('Compute for(default:1)',       '(1)Central View Only',  '(2)Off-Axis Optimization')-1)*RANGE
if(optRange && ~USE_PRECOMPUTATION)
    if(menu('This is going to take a while and storage space!', 'OK', 'Probably Not, Abort!') == 2)
        return
    end
end

SPEEDY  = true; %Faster or Less Memory to solve?
LAMBDA  = 0.08; %Constraint to enhance the brightness of the display
GAMMA   = 2.2;  %Calibrated for iPod touch4/iPhone4

%TODO:
% KNOWN BUG: shifted prefiltered light field image, due to the ExtraPixel
% (XtraPix) parameter in the buildMatrix function, has to compensate that


Do = 250;
displayInputs;
cameraInputs;
%Now lets first consider the eye is emmetropic(normal vision), so focal
%lengh is always adjustable between 60D ~ 70D.(inf ~ 10cm)
%eyeInputs;
%Do = DoSTAR;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Compute/reload the projection matrix.
% every 0.5mm offset on the display plane is 1px shift in the sensor plane
offsety = 0.0;
offsetx = 0.0;

%need to precompute projection matrices if running for the 1st time
if(~USE_PRECOMPUTATION )
    for(offset_y = -optRange:1:optRange)
        for(offset_x = -optRange:1:optRange)    %build matrix has some hard coded boundary
            A1 = BuildMatrix(offset_y, offset_x , Display, Camera, Do);
            save(sprintf('output/precompute/projection_matrix_offsetY_%2.1f_offsetX_%2.1f.mat',offset_y,offset_x), 'A1');
        end
    end
end
A = [];
for(offset_y = -optRange:1:optRange)
    for(offset_x = -optRange:1:optRange)
        sprintf('output/projection_matrix_offsetY_%2.1f_offsetX_%2.1f.mat',offset_y, offset_x)
        load(sprintf('output/precompute/projection_matrix_offsetY_%2.1f_offsetX_%2.1f.mat',offset_y, offset_x));
        A = [A; A1]; 
    end
end    


% Ax - b = 0;  -> AtA x = Atb, also the additional constraints
disp('prepare to solve');
if(LAMBDA)
    B = speye(Display.Screen_Res^2*Display.Angular_Res^2)*LAMBDA;
    A = [A;B];
    bb = zeros(Display.Screen_Res^2*Display.Angular_Res^2,1)*LAMBDA;
end
if(SPEEDY)
    AtA = A'*A;
    disp('Done with ATA');
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Below is the code to compute the prefiltering.
%CONTRAST=1/(BIAS + 1);       
IMG                 = imresize(img, Camera.Sensor_Res/size(img,1));
CONTRAST            = 1.0;
BIAS                = (1-CONTRAST)/CONTRAST;   %BIAS*CONTRAST + CONTRAST = 1  
[rows, cols, color] = size(IMG);
REC                 = zeros(rows, cols, color);

num = 0;
for(ch = 1:color)
    img = IMG(:,:,ch);
    b = [];

    for(offset_y = -optRange:1:optRange)
        for(offset_x = -optRange:1:optRange)
            %dividing by 0.5 is really subtle....basically tied to the
            %scene geometry: when the head moves a few mm, how much the
            %image should move.
            img0 = reshape(imshift(img, -offset_x/0.5, -offset_y/0.5), [],1);   
            b = [b; img0;];
        end
    end 

    b = b + BIAS;
    if(LAMBDA)
        b = [b; bb];
    end

    fcn         = @(x) norm( A*x - b)^2;
    if(SPEEDY)
        Ab = A'*b;
        grad = @(x) 2*( AtA*x - Ab );    %takes more memory
    else
        grad = @(x) 2*A'*(A*x-b);        %takes longer
    end
    l               = zeros(Display.Screen_Res^2*Display.Angular_VRes*Display.Angular_HRes,1);    % lower bound
    u               = inf  (Display.Screen_Res^2*Display.Angular_VRes*Display.Angular_HRes,1);      % there is no upper bound
    fun             = @(x)fminunc_wrapper( x, fcn, grad); 
    
    % Request very high accuracy for this test:
    opts            = struct( 'factr', 1e3, 'pgtol', 1e-6, 'm', 10);
    opts.printEvery = 10;
    opts.maxIts     = 100;    
    opts.x0         = zeros(Display.Screen_Res^2*Display.Angular_VRes*Display.Angular_HRes,1);    
    opts.m          = 50;
    tic
    
    % Run the algorithm:
    [LF, dummy, info] = lbfgsb(fun, l, u, opts );

    maxlf = max(LF(:))
    minlf = min(LF(:));
    time = toc
    rec = A*LF - BIAS;
    rec = rec(1:length(img(:)));
    rec = reshape(rec, Camera.Sensor_Res, Camera.Sensor_Res);    
    rec = imshift(rec, (offsetx/0.5), (offsety/0.5));
    REC(:,:,ch) = rec;
    mlf  = 1;
    if(max(LF(:)) > mlf)
        mlf = max(LF(:));
    end

    filename = sprintf('output/CONTRAST_%f_Channel_%d.mat',CONTRAST,ch)
    save(filename, 'LF');

end
MAXI = max(IMG(:));
MSE = sum(   (IMG(:) - REC(:)).^2    )/length(IMG(:));       
PSNR = round(20*log10(MAXI/sqrt(MSE)));                


imwrite(REC, sprintf('output/CONTRAST_%f_Err_%1.5f-dB.png',CONTRAST,PSNR), 'png');

compositeRGB;