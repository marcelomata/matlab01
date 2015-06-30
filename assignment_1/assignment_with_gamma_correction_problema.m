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

%demosaic
Im1 = zeros(h,w,3,'uint16');
Im1(2:2:end, 2:2:end, 1) = cfa(2:2:end, 2:2:end);
Im1(1:2:end, 2:2:end, 2) = cfa(1:2:end, 2:2:end);
Im1(2:2:end, 1:2:end, 2) = cfa(2:2:end, 1:2:end);
Im1(1:2:end, 1:2:end, 3) = cfa(1:2:end, 1:2:end);

wRB=[0.25 0.5 0.25; 0.5 1 0.5; 0.25 0.5 0.25];

wG=[0 0.25 0; 0.25 1 0.25; 0 0.25 0];

Im1(:,:,1)=imfilter(Im1(:,:,1),wRB,0);
Im1(:,:,2)=imfilter(Im1(:,:,2),wG,0);
Im1(:,:,3)=imfilter(Im1(:,:,3),wRB,0);

%gamma correction
lambda = 1/(2.2);
imgam = zeros(h,w,3,'uint16');
imgam(:,:,:) = realpow(double(Im1(:,:,:)),lambda);
%Im1(:,:,:) = Im1(:,:,:) + times(Im1(:,:,:),imgam(:,:,:));
Im1(:,:,:) = times(Im1(:,:,:),imgam(:,:,:));

%imtool(Im2);
imtool(Im1);