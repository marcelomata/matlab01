I = imread('scene_raw.dng');
info = imfinfo('scene_raw.dng');
info.SubIFDs{1};
warning off MATLAB:tifflib:TIFFReadDirectory:libraryWarning
t = Tiff('scene_raw.dng','r');
offsets = getTag(t,'SubIFD');
setSubDirectory(t,offsets(1));
cfa = read(t);
close(t);

[h w num_channels] = size(cfa);
numMaxGray = info.SubIFDs{1}.MaxSampleValue;
%Im2 = demosaic(cfa, 'bggr');

%gamma correction
lambda = 1/(2.2);
imgam = zeros(h,w,1,'uint16');
x = double(cfa(:,:));
imgam(:,:) = realpow(x/numMaxGray,lambda) * numMaxGray;

%demosaic
m1 = double(zeros(10,10,3,'uint16'));
m2 = double(ones(10,10,1,'uint16'));
m1(1:2:end, 1:2:end, 1) = m2(1:2:end, 1:2:end);
m1(1:2:end, 2:2:end, 2) = m2(1:2:end, 2:2:end);
m1(2:2:end, 1:2:end, 2) = m2(2:2:end, 1:2:end);
m1(2:2:end, 2:2:end, 3) = m2(2:2:end, 2:2:end);
m1(:,:,1) = m1(:,:,1)/4;

maskRB=[0.25 0.5 0.25; 0.5 1 0.5; 0.25 0.5 0.25];
maskG=[0 0.25 0; 0.25 1 0.25; 0 0.25 0];

m1(:,:,1)=imfilter(m1(:,:,1),maskRB,0);
m1(:,:,2)=imfilter(m1(:,:,2),maskG,0);
m1(:,:,3)=imfilter(m1(:,:,3),maskRB,0);




 
%getting the r, g and b value of the point
rgb(y,x,1);
rgb(y,x,2);
rgb(y,x,3);
 
%dividing each pixel by the reduction factor(255/reference_pixel)
rgb_wb(:,:,1) = rgb(:,:,1).*(255/rgb(y,x,1));
rgb_wb(:,:,2) = rgb(:,:,2).*(255/rgb(y,x,2));
rgb_wb(:,:,3) = rgb(:,:,3).*(255/rgb(y,x,3));
