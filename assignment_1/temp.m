%%I = imread('statue.png');
I = imread('scene_raw.dng');
imshow(I);
info = imfinfo('scene_raw.dng');
info.SubIFDs{1};

warning off MATLAB:tifflib:TIFFReadDirectory:libraryWarning
t = Tiff('scene_raw.dng','r');
offsets = getTag(t,'SubIFD');
setSubDirectory(t,offsets(1));
cfa = read(t);
imtool(cfa);
close(t);

%curve = info.SubIFDs{1}.LinearizationTable; nao existe campo LinearizationTable
%plot(curve)

%[h w num_channels] = size(I);   
[h w num_channels] = size(cfa);

%for i = 1:w
%    for c = 1:num_channels
%        I(:,i,c) = 200;
%    end
%end

R = ones(h, w, 3);
numMaxGray = info.SubIFDs{1}.MaxSampleValue
lin = 1;
col = 1;

demosaic(cfa);

%demosaic
R(2:2:end, 2:2:end, 1) = double(cfa(2:2:end, 2:2:end, 1))/numMaxGray;
R(1:2:end, 2:2:end, 2) = double(cfa(1:2:end, 2:2:end, 1))/numMaxGray;
R(2:2:end, 1:2:end, 2) = double(cfa(2:2:end, 1:2:end, 1))/numMaxGray;
R(1:2:end, 1:2:end, 3) = double(cfa(1:2:end, 1:2:end, 1))/numMaxGray;


Im1(2:2:end, 2:2:end, 1) = imgam(2:2:end, 2:2:end);
Im1(1:2:end, 2:2:end, 2) = imgam(1:2:end, 2:2:end);
Im1(2:2:end, 1:2:end, 2) = imgam(2:2:end, 1:2:end);
Im1(1:2:end, 1:2:end, 3) = imgam(1:2:end, 1:2:end);

r = zeros(h,w,1,'uint16');
g = zeros(h,w,1,'uint16');
b = zeros(h,w,1,'uint16');

r(2:2:end, 2:2:end) = imgam(2:2:end, 2:2:end);
g(1:2:end, 2:2:end, 2) = imgam(1:2:end, 2:2:end);
g(2:2:end, 1:2:end, 2) = imgam(2:2:end, 1:2:end);
b(1:2:end, 1:2:end, 3) = imgam(1:2:end, 1:2:end);

%m = [1 2 3];
%if mod(2,2) == 0
%    m = [3 3 3]
%end

m = [1 2 3];
if mod(2, 2) eq 0 then
    m = [3 3 3];
end


for i = 1:3
    m(:,i);
end

%for i = 1:w
%	I(:,i,1) = I(:,i,1)-I(:,i,1); I(:,i,2) = 0; I(:,i,3) = 0;
%end

imwrite(I,'myFile.png');
imshow(I);

m = rand(4,4);

m1 = realpow(double(m(:,:)/numMaxGray),lambda) * numMaxGray;


%%size(I) // ver tamanho da imagem e quantidade de canais
%%I = imread('.\myimages\chestxray.jpg'); //read from a directory

%%I = im2double(I);

%% Edge-preserving smoothing example
%%sigma_s = 60;
%%sigma_r = 0.4;

% Filter using normalized convolution.
%%F_nc = NC(I, sigma_s, sigma_r);

% Filter using interpolated convolution.
%%F_ic = IC(I, sigma_s, sigma_r);

% Filter using the recursive filter.
%%F_rf = RF(I, sigma_s, sigma_r);

% Show results.
%%figure, imshow(I); title('Input photograph');
%%figure, imshow(F_nc); title('Normalized convolution');
%%figure, imshow(F_ic); title('Interpolated convolution');
%%figure, imshow(F_rf); title('Recursive filter');





Im2 = Im1;
Im1 = Im2;
%white balance proportion algorithm
%imtool(Im1);
%[x,y] = ginput(1); 
%x = round(x);
%y = round(y);
x = 3041;
y = 1832;
%x = 759;
%y = 995;
%x = 2551;
%y = 343;
%x = 2583;
%y = 355;
    
Im1(:,:,1) = Im1(:,:,1).*(double(numMaxGray)/double(Im1(y,x,1)));
Im1(:,:,2) = Im1(:,:,2).*(double(numMaxGray)/double(Im1(y,x,2)));
Im1(:,:,3) = Im1(:,:,3).*(double(numMaxGray)/double(Im1(y,x,3)));
imtool(Im1);