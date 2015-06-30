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
temp = double(cfa(:,:));
imgam(:,:) = realpow(temp/numMaxGray,lambda) * numMaxGray;

%demosaic
Im1 = zeros(h,w,3,'uint16');
Im1(1:2:end, 1:2:end, 1) = imgam(1:2:end, 1:2:end);
Im1(1:2:end, 2:2:end, 2) = imgam(1:2:end, 2:2:end);
Im1(2:2:end, 1:2:end, 2) = imgam(2:2:end, 1:2:end);
Im1(2:2:end, 2:2:end, 3) = imgam(2:2:end, 2:2:end);

maskRB=[0.25 0.5 0.25; 0.5 1 0.5; 0.25 0.5 0.25];
maskG=[0 0.25 0; 0.25 1 0.25; 0 0.25 0];

Im1(:,:,1)=imfilter(Im1(:,:,1),maskRB,0);
Im1(:,:,2)=imfilter(Im1(:,:,2),maskG,0);
Im1(:,:,3)=imfilter(Im1(:,:,3),maskRB,0);

%white balance
%imtool(Im1);
%[x,y] = ginput(1); 
%x = round(x);
%y = round(y);
x = 3041;
y = 1832;
%x = 1340;
%y = 1802;
%x = 2546;
%y = 410;
    
Im1(:,:,1) = Im1(:,:,1).*(numMaxGray/Im1(y,x,1));
Im1(:,:,2) = Im1(:,:,2).*(numMaxGray/Im1(y,x,2));
Im1(:,:,3) = Im1(:,:,3).*(numMaxGray/Im1(y,x,3));

%imtool(Im2);   
imtool(Im1);