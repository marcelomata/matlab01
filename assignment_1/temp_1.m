%%I = imread('statue.png');
I = imread('scene_raw.dng');
%imshow(I);
info = imfinfo('scene_raw.dng');
info.SubIFDs{1};

warning off MATLAB:tifflib:TIFFReadDirectory:libraryWarning
t = Tiff('scene_raw.dng','r');
offsets = getTag(t,'SubIFD');
setSubDirectory(t,offsets(1));
cfa = read(t);
%imtool(cfa);
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

%R = ones(h, w, 3);
%G = ones(h, w, 3);
%B = ones(h, w, 3);

R = zeros(h,w,3,'uint8');
G = zeros(h,w,3,'uint8');
B = zeros(h,w,3,'uint8'); 

R(:,:,:) = double(0.0);
G(:,:,:) = double(0.0);
B(:,:,:) = double(0.0);

Im1 = zeros(h,w,3,'uint8');
Im1(2:2:end, 2:2:end, 1) = (double(cfa(2:2:end, 2:2:end))/numMaxGray)*255;
Im1(1:2:end, 2:2:end, 2) = (double(cfa(1:2:end, 2:2:end))/numMaxGray)*255;
Im1(2:2:end, 1:2:end, 2) = (double(cfa(2:2:end, 1:2:end))/numMaxGray)*255;
Im1(1:2:end, 1:2:end, 3) = (double(cfa(1:2:end, 1:2:end))/numMaxGray)*255;

Im2 = zeros(h,w,3,'uint16');
Im2(2:2:end, 2:2:end, 1) = double(cfa(2:2:end, 2:2:end));
Im2(1:2:end, 2:2:end, 2) = double(cfa(1:2:end, 2:2:end));
Im2(2:2:end, 1:2:end, 2) = double(cfa(2:2:end, 1:2:end));
Im2(1:2:end, 1:2:end, 3) = double(cfa(1:2:end, 1:2:end));

%imtool(R)
numMaxGray = info.SubIFDs{1}.MaxSampleValue;
lin = 2;
col = 2;

 double(R(2:2:end, 1,1));

%demosaic
R(2:2:end, 2:2:end, 1) = (double(cfa(2:2:end, 2:2:end))/numMaxGray)*255;
G(1:2:end, 2:2:end, 2) = (double(cfa(1:2:end, 2:2:end))/numMaxGray)*255;
G(2:2:end, 1:2:end, 2) = (double(cfa(2:2:end, 1:2:end))/numMaxGray)*255;
B(1:2:end, 1:2:end, 3) = (double(cfa(1:2:end, 1:2:end))/numMaxGray)*255;
%%%%%%

double(cfa(h-4, 1))/numMaxGray

R(h-4, 1, 1) = double(cfa(h-4, 1))/numMaxGray;

for i = 1:h
    R(i, :, 1) = double(cfa(i, 1))/numMaxGray;
end

imtool(R)

for i = 2:h-1
    for j = 2:w-1
        if lin==2 
            if col==2 %r
                R(i,j,1) = double(cfa(i,j))/numMaxGray;
                R(i,j,2) = double(double(cfa(i-1,j)+cfa(i+1,j)+cfa(i,j-1)+cfa(i-1,j))/4)/numMaxGray;
                R(i,j,3) = double(double(cfa(i-1,j-1)+cfa(i+1,j+1)+cfa(i-1,j+1)+cfa(i+1,j+1))/4)/numMaxGray;
                col = 1;
            else %g
                R(i,j,2) = double(cfa(i,j))/numMaxGray;
                R(i,j,1) = double(double(cfa(i,j+1)+cfa(i,j-1))/2)/numMaxGray;
                R(i,j,3) = double(double(cfa(i-1,j)+cfa(i+1,j))/2)/numMaxGray;
                col = 2;
            end
            lin = 1;
        else
            if col==2 %g
                R(i,j,2) = double(cfa(i,j))/numMaxGray;
                R(i,j,3) = double(double(cfa(i,j+1)+cfa(i,j-1))/2)/numMaxGray;
                R(i,j,1) = double(double(cfa(i-1,j)+cfa(i+1,j))/2)/numMaxGray;
                col = 1;
            else %b
                R(i,j,3) = double(cfa(i,j))/numMaxGray;
                R(i,j,2) = double(double(cfa(i-1,j)+cfa(i+1,j)+cfa(i,j-1)+cfa(i-1,j))/4)/numMaxGray;
                R(i,j,1) = double(double(cfa(i-1,j-1)+cfa(i+1,j+1)+cfa(i-1,j+1)+cfa(i+1,j+1))/4)/numMaxGray;
                col = 2;
            end
            lin = 2;
        end
    end
end


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