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
Im1(1:2:end, 1:2:end, 1) = cfa(1:2:end, 1:2:end);
Im1(1:2:end, 2:2:end, 2) = cfa(1:2:end, 2:2:end);
Im1(2:2:end, 1:2:end, 2) = cfa(2:2:end, 1:2:end);
Im1(2:2:end, 2:2:end, 3) = cfa(2:2:end, 2:2:end);

%Im1 = zeros(h,w,3,'uint8');
%Im1(1:2:end, 1:2:end, 1) = imgam(1:2:end, 1:2:end);
%Im1(1:2:end, 2:2:end, 2) = imgam(1:2:end, 2:2:end)im;
%Im1(2:2:end, 1:2:end, 2) = imgam(2:2:end, 1:2:end);
%Im1(2:2:end, 2:2:end, 3) = imgam(2:2:end, 2:2:end);

maskRB=[0.25 0.5 0.25; 0.5 1 0.5; 0.25 0.5 0.25];
maskG=[0 0.25 0; 0.25 1 0.25; 0 0.25 0];

Im1(:,:,1)=imfilter(Im1(:,:,1),maskRB,0);
Im1(:,:,2)=imfilter(Im1(:,:,2),maskG,0);
Im1(:,:,3)=imfilter(Im1(:,:,3),maskRB,0);
imtool(Im1);

Im2 = Im1;
Im1 = Im2;
%white balance proportion algorithm
%imtool(Im1);
%[x,y] = ginput(1); 
%x = round(x);
%y = round(y);
x = 3041;
y = 1832; 
Im1(:,:,1) = Im1(:,:,1).*(double(numMaxGray)/double(Im1(y,x,1)));
Im1(:,:,2) = Im1(:,:,2).*(double(numMaxGray)/double(Im1(y,x,2)));
Im1(:,:,3) = Im1(:,:,3).*(double(numMaxGray)/double(Im1(y,x,3)));
imtool(Im1);

%white balance proportion max algorithm equal white patch adapted
maxR = max(max(Im1(:,:,1)));
maxG = max(max(Im1(:,:,2)));
maxB = max(max(Im1(:,:,3)));
alpha = double(numMaxGray)/double(maxR);
gamma = double(numMaxGray)/double(maxG);
beta = double(numMaxGray)/double(maxB);
Im1(:,:,1) = Im1(:,:,1).*(alpha);
Im1(:,:,2) = Im1(:,:,2).*(gamma);
Im1(:,:,3) = Im1(:,:,3).*(beta);
imtool(Im1);

%white balance gray world algorithm
sumR = sum(sum(Im1(:,:,1)));
avgR = double(sumR)/double(w*h);
sumG = sum(sum(Im1(:,:,2)));
avgG = double(sumG)/double(w*h);
sumB = sum(sum(Im1(:,:,3)));
avgB = double(sumB)/double(w*h);
alpha = avgG/avgR;
beta = avgG/avgB;
Im1(:,:,1) = Im1(:,:,1).*(alpha);
Im1(:,:,3) = Im1(:,:,3).*(beta);
imtool(Im1);

%white balance gray world algorithm adapted
sumR = sum(sum(Im1(:,:,1)));
avgR = double(sumR)/double(w*h);
sumG = sum(sum(Im1(:,:,2)));
avgG = double(sumG)/double(w*h);
sumB = sum(sum(Im1(:,:,3)));
avgB = double(sumB)/double(w*h);
gamma = double(numMaxGray)/double(avgG);
alpha = double(numMaxGray)/avgR;
beta = double(numMaxGray)/avgB;
Im1(:,:,1) = Im1(:,:,1).*(alpha);
Im1(:,:,2) = Im1(:,:,2).*(gamma);
Im1(:,:,3) = Im1(:,:,3).*(beta);
imtool(Im1);

%white balance white patch algorithm
maxR = max(max(Im1(:,:,1)));
maxG = max(max(Im1(:,:,2)));
maxB = max(max(Im1(:,:,3))); 
alpha = double(maxG)/double(maxR);
beta = double(maxG)/double(maxB);
Im1(:,:,1) = Im1(:,:,1).*(alpha);
Im1(:,:,3) = Im1(:,:,3).*(beta);
imtool(Im1);

%white balance white patch algorithm adapted
maxR = max(max(Im1(:,:,1)));
maxG = max(max(Im1(:,:,2)));
maxB = max(max(Im1(:,:,3))); 
gamma = double(numMaxGray)/double(maxG);
maxG = maxG*gamma;
alpha = double(maxG)/double(maxR);
beta = double(maxG)/double(maxB);
Im1(:,:,1) = Im1(:,:,1).*(alpha);
Im1(:,:,2) = Im1(:,:,2).*(gamma);
Im1(:,:,3) = Im1(:,:,3).*(beta);
imtool(Im1);


Im3 = Im1;
Im1 = Im3;
%gamma correction
%lambda = 1/(2.2);
%lambda = 1/(1.5);
%lambda = 1/(1.3);
%imgam = zeros(h,w,1,'uint8');
%imgam = zeros(h,w,1,'uint16');
%temp = double(cfa(:,:));
%imgam(:,:) = realpow(temp/numMaxGray,lambda) * numMaxGray;
%Im1(1000,1000,1)
%((double(Im1(1000,1000,1))/numMaxGray).^lambda)* numMaxGray
%gamma = 1/2.2;
gamma = 1.5;
Im1(:,:,1) = (double(Im1(:,:,1))/numMaxGray).^gamma * numMaxGray;
Im1(:,:,2) = (double(Im1(:,:,2))/numMaxGray).^gamma * numMaxGray;
Im1(:,:,3) = (double(Im1(:,:,3))/numMaxGray).^gamma * numMaxGray;
imtool(Im1);
%imtool(Im2);   
