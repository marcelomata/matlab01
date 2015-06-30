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
%Im1 = zeros(h,w,3,'uint16');
Im1 = zeros(h,w,3,'uint8');
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
%x = 3041;
%y = 1832;
%x = 759;
%y = 995;
%x = 2551;
%y = 343;
x = 2583;
y = 355;
    
Im1(:,:,1) = Im1(:,:,1).*(double(numMaxGray)/double(Im1(y,x,1)));
Im1(:,:,2) = Im1(:,:,2).*(double(numMaxGray)/double(Im1(y,x,2)));
Im1(:,:,3) = Im1(:,:,3).*(double(numMaxGray)/double(Im1(y,x,3)));

%white balance gray world algorithm
sumR = sum(sum(Im1(:,:,1)));
avgR = double(sumR)/double(w*h);
sumG = sum(sum(Im1(:,:,2)));
avgG = double(sumG)/double(w*h);
sumB = sum(sum(Im1(:,:,3)));
avgB = double(sumB)/double(w*h);
alpha = avgR/avgG;
beta = avgB/avgG;
Im1(:,:,1) = Im1(:,:,1).*(alpha);
Im1(:,:,3) = Im1(:,:,3).*(beta);
imtool(Im1);

%white balance another algorithm
[sortedValues,sortIndex] = sort(Im1(:),'descend');
maxIndex = sortIndex(1);
maxValue = sortedValues(1);
maxRation = double(numMaxGray)/double(maxValue);
Im1(:,:,1) = Im1(:,:,1).*(maxRation);
Im1(:,:,2) = Im1(:,:,2).*(maxRation);
Im1(:,:,3) = Im1(:,:,3).*(maxRation);

%gamma correction
lambda = 1/(2.2);
imgam = zeros(h,w,1,'uint8');
%imgam = zeros(h,w,1,'uint16');
temp = double(cfa(:,:));
%imgam(:,:) = realpow(temp/numMaxGray,lambda) * numMaxGray;
Im1(:,:,1) = realpow(double(Im1(:,:,1))/numMaxGray,lambda) * numMaxGray;
Im1(:,:,2) = realpow(double(Im1(:,:,2))/numMaxGray,lambda) * numMaxGray;
Im1(:,:,3) = realpow(double(Im1(:,:,3))/numMaxGray,lambda) * numMaxGray;

%imtool(Im2);   
imtool(Im1);