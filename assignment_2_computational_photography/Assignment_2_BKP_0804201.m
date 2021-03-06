C = load('curve.mat');
C = C.C;

I1 = imread('images/office_1.jpg');
info1 = imfinfo('images/office_1.jpg');
exposureTime1 = info1.DigitalCamera.ExposureTime;

I2 = imread('images/office_2.jpg');
info2 = imfinfo('images/office_2.jpg');
exposureTime2 = info2.DigitalCamera.ExposureTime;

I3 = imread('images/office_3.jpg');
info3 = imfinfo('images/office_3.jpg');
exposureTime3 = info3.DigitalCamera.ExposureTime;

I4 = imread('images/office_4.jpg');
info4 = imfinfo('images/office_4.jpg');
exposureTime4 = info4.DigitalCamera.ExposureTime;

I5 = imread('images/office_5.jpg');
info5 = imfinfo('images/office_5.jpg');
exposureTime5 = info5.DigitalCamera.ExposureTime;

I6 = imread('images/office_6.jpg');
info6 = imfinfo('images/office_6.jpg');
exposureTime6 = info6.DigitalCamera.ExposureTime;


%---------------------------------------------------------------------%
%%{
%funciona quando utilizado todo o processamento que est� funcionando
x = double(I1);
I1 = uint8(255 * (x/255).^ (2.2));
x = double(I2);
I2 = uint8(255 * (x/255).^ (2.2));
x = double(I3);
I3 = uint8(255 * (x/255).^ (2.2));
x = double(I4);
I4 = uint8(255 * (x/255).^ (2.2));
x = double(I5);
I5 = uint8(255 * (x/255).^ (2.2));
x = double(I6);
I6 = uint8(255 * (x/255).^ (2.2));
%%}
%---------------------------------------------------------------------%


%---------------------------------------------------------------------%
%{
%funciona quando utilizado todo o processamento que est� funcionando
X1 = uint16((exp(C(round(I1+1)))*255)/exposureTime1);
X2 = uint16((exp(C(round(I2+1)))*255)/exposureTime2);
X3 = uint16((exp(C(round(I3+1)))*255)/exposureTime3);
X4 = uint16((exp(C(round(I4+1)))*255)/exposureTime4);
X5 = uint16((exp(C(round(I5+1)))*255/exposureTime5));
X6 = uint16((exp(C(round(I6+1)))*255/exposureTime6));
%}
%%{
X1 = uint8((exp(C(round(I1+1)))*255)/exposureTime1);
X2 = uint8((exp(C(round(I2+1)))*255)/exposureTime2);
X3 = uint8((exp(C(round(I3+1)))*255)/exposureTime3);
X4 = uint8((exp(C(round(I4+1)))*255)/exposureTime4);
X5 = uint8((exp(C(round(I5+1)))*255/exposureTime5));
X6 = uint8((exp(C(round(I6+1)))*255/exposureTime6));
%%}
%---------------------------------------------------------------------%


%---------------------------------------------------------------------%
%{
A = [1 2 3; 3 4 5; 7 8 9];
B = [3 4 4; 5 6 7; 9 8 7];

C = cat(3, A, B);
D = ones(3);
numEl = (A>2&A<5)+(B>2&B<5);
numEl(numEl == 0) = 1;
D(A>2&A<5) = A(A>2&A<5);
D(B>2&B<5) = D(B>2&B<5)+B(B>2&B<5);
double(D)./double(numEl)
%}
%XN=cat(7,X1,X2,X3,X4,X5,X6);
%{
NN = (X1>0&X1<255)+(X2>0&X2<255)+(X3>0&X3<255)+(X4>0&X4<255)+(X5>0&X5<255)+(X6>0&X6<255);
NN(NN==0) = 0.1;
SN = uint16(ones(size(X1)));
SN(X1>0&X1<255) = X1(X1>0&X1<255);
SN(X2>0&X2<255) = SN(X2>0&X2<255)+X2(X2>0&X2<255);
SN(X3>0&X3<255) = SN(X3>0&X3<255)+X3(X3>0&X3<255);
SN(X4>0&X4<255) = SN(X4>0&X4<255)+X4(X4>0&X4<255);
SN(X5>0&X5<255) = SN(X5>0&X5<255)+X5(X5>0&X5<255);
SN(X6>0&X6<255) = SN(X6>0&X6<255)+X6(X6>0&X6<255);
%}
%%{
NN = (X1>=0&X1<=255)+(X2>=0&X2<=255)+(X3>=0&X3<=255)+(X4>=0&X4<=255)+(X5>=0&X5<=255)+(X6>=0&X6<=255);
NN(NN==0) = 1;
SN = uint8(ones(size(X1)));
SN(X1>=0&X1<=255) = X1(X1>=0&X1<=255);
SN(X2>=0&X2<=255) = SN(X2>=0&X2<=255)+X2(X2>=0&X2<=255);
SN(X3>=0&X3<=255) = SN(X3>=0&X3<=255)+X3(X3>=0&X3<=255);
SN(X4>=0&X4<=255) = SN(X4>=0&X4<=255)+X4(X4>=0&X4<=255);
SN(X5>=0&X5<=255) = SN(X5>=0&X5<=255)+X5(X5>=0&X5<=255);
SN(X6>=0&X6<=255) = SN(X6>=0&X6<=255)+X6(X6>=0&X6<=255);
%%}
%{
NN = (X1>=0&X1<=1000)+(X2>=0&X2<=1000)+(X3>=0&X3<=1000)+(X4>=0&X4<=1000)+(X5>=0&X5<=1000)+(X6>=0&X6<=1000);
NN(NN==0) = 0.1;
SN = uint16(ones(size(X1)));
SN(X1>=0&X1<=1000) = X1(X1>=0&X1<=1000);
SN(X2>=0&X2<=1000) = SN(X2>=0&X2<=1000)+X2(X2>=0&X2<=1000);
SN(X3>=0&X3<=1000) = SN(X3>=0&X3<=1000)+X3(X3>=0&X3<=1000);
SN(X4>=0&X4<=1000) = SN(X4>=0&X4<=1000)+X4(X4>=0&X4<=1000);
SN(X5>=0&X5<=1000) = SN(X5>=0&X5<=1000)+X5(X5>=0&X5<=1000);
SN(X6>=0&X6<=1000) = SN(X6>=0&X6<=1000)+X6(X6>=0&X6<=1000);
%}
%{
NN = (X1>0&X1<65000)+(X2>0&X2<65000)+(X3>0&X3<65000)+(X4>0&X4<65000)+(X5>0&X5<65000)+(X6>0&X6<65000);
NN(NN==0) = 0.1;
SN = uint16(ones(size(X1)));
SN(X1>0&X1<65000) = X1(X1>0&X1<65000);
SN(X2>0&X2<65000) = SN(X2>0&X2<65000)+X2(X2>0&X2<65000);
SN(X3>0&X3<65000) = SN(X3>0&X3<65000)+X3(X3>0&X3<65000);
SN(X4>0&X4<65000) = SN(X4>0&X4<65000)+X4(X4>0&X4<65000);
SN(X5>0&X5<65000) = SN(X5>0&X5<65000)+X5(X5>0&X5<65000);
SN(X6>0&X6<65000) = SN(X6>0&X6<65000)+X6(X6>0&X6<65000);
%}
%{
NN = (X1>0&X1<700)+(X2>0&X2<700)+(X3>0&X3<700)+(X4>0&X4<700)+(X5>0&X5<700)+(X6>0&X6<700);
NN(NN==0) = 0.1;
SN = uint16(ones(size(X1)));
SN(X1>0&X1<700) = X1(X1>0&X1<700);
SN(X2>0&X2<700) = SN(X2>0&X2<700)+X2(X2>0&X2<700);
SN(X3>0&X3<700) = SN(X3>0&X3<700)+X3(X3>0&X3<700);
SN(X4>0&X4<700) = SN(X4>0&X4<700)+X4(X4>0&X4<700);
SN(X5>0&X5<700) = SN(X5>0&X5<700)+X5(X5>0&X5<700);
SN(X6>0&X6<700) = SN(X6>0&X6<700)+X6(X6>0&X6<700);
%}
%{
dim = size(X1,1) * size(X1,2);
NN = (X1>0&X1<700)+(X2>0&X2<700)+(X3>0&X3<700)+(X4>0&X4<700)+(X5>0&X5<700)+(X6>0&X6<700);
NN(NN==0) = 0.1;
SN = uint16(ones(size(X1)));
SN(X1>0&X1<700) = X1(X1>0&X1<700);
SN(X2>0&X2<700) = SN(X2>0&X2<700)+X2(X2>0&X2<700);
SN(X3>0&X3<700) = SN(X3>0&X3<700)+X3(X3>0&X3<700);
SN(X4>0&X4<700) = SN(X4>0&X4<700)+X4(X4>0&X4<700);
SN(X5>0&X5<700) = SN(X5>0&X5<700)+X5(X5>0&X5<700);
SN(X6>0&X6<700) = SN(X6>0&X6<700)+X6(X6>0&X6<700);
%}
%}
%hdr_image = uint8(mean(XN,7));
%hdr_image = uint16(double(double(SN)./double(NN)));
hdr_image = uint8(double(double(SN)./double(NN)));
%imtool(tonemap(double(hdr_image)));
   
%{
hdrMap = zeros(size(image));
sum = zeros(size(image));

dim = size(X1,1) * size(X1,2);
saturatedPixels = ones(size(X1));    
saturatedPixelsRed = find(X1(:,:,1) == 255);
saturatedPixelsGreen = find(X1(:,:,2) == 255);
saturatedPixelsBlue = find(X1(:,:,3) == 255);
saturatedPixels(saturatedPixelsRed) = 0;
saturatedPixels(saturatedPixelsRed + dim) = 0;
saturatedPixels(saturatedPixelsRed + 2*dim) = 0;
saturatedPixels(saturatedPixelsGreen) = 0;
saturatedPixels(saturatedPixelsGreen + dim) = 0;
saturatedPixels(saturatedPixelsGreen + 2*dim) = 0;
saturatedPixels(saturatedPixelsBlue) = 0;
saturatedPixels(saturatedPixelsBlue + dim) = 0;
saturatedPixels(saturatedPixelsBlue + 2*dim) = 0;

hdrMap = hdrMap .* saturatedPixels;
sum = sum .* saturatedPixels;

dim = size(X2,1) * size(X2,2);
saturatedPixels = ones(size(X2));    
saturatedPixelsRed = find(X2(:,:,1) == 255);
saturatedPixelsGreen = find(X2(:,:,2) == 255);
saturatedPixelsBlue = find(X2(:,:,3) == 255);
saturatedPixels(saturatedPixelsRed) = 0;
saturatedPixels(saturatedPixelsRed + dim) = 0;
saturatedPixels(saturatedPixelsRed + 2*dim) = 0;
saturatedPixels(saturatedPixelsGreen) = 0;
saturatedPixels(saturatedPixelsGreen + dim) = 0;
saturatedPixels(saturatedPixelsGreen + 2*dim) = 0;
saturatedPixels(saturatedPixelsBlue) = 0;
saturatedPixels(saturatedPixelsBlue + dim) = 0;
saturatedPixels(saturatedPixelsBlue + 2*dim) = 0;
hdrMap = hdrMap .* saturatedPixels;
sum = sum .* saturatedPixels;

dim = size(X3,1) * size(X3,2);
saturatedPixels = ones(size(X3));    
saturatedPixelsRed = find(X3(:,:,1) == 255);
saturatedPixelsGreen = find(X3(:,:,2) == 255);
saturatedPixelsBlue = find(X3(:,:,3) == 255);
saturatedPixels(saturatedPixelsRed) = 0;
saturatedPixels(saturatedPixelsRed + dim) = 0;
saturatedPixels(saturatedPixelsRed + 2*dim) = 0;
saturatedPixels(saturatedPixelsGreen) = 0;
saturatedPixels(saturatedPixelsGreen + dim) = 0;
saturatedPixels(saturatedPixelsGreen + 2*dim) = 0;
saturatedPixels(saturatedPixelsBlue) = 0;
saturatedPixels(saturatedPixelsBlue + dim) = 0;
saturatedPixels(saturatedPixelsBlue + 2*dim) = 0;
hdrMap = hdrMap .* saturatedPixels;
sum = sum .* saturatedPixels;

dim = size(X4,1) * size(X4,2);
saturatedPixels = ones(size(X4));    
saturatedPixelsRed = find(X4(:,:,1) == 255);
saturatedPixelsGreen = find(X4(:,:,2) == 255);
saturatedPixelsBlue = find(X4(:,:,3) == 255);
saturatedPixels(saturatedPixelsRed) = 0;
saturatedPixels(saturatedPixelsRed + dim) = 0;
saturatedPixels(saturatedPixelsRed + 2*dim) = 0;
saturatedPixels(saturatedPixelsGreen) = 0;
saturatedPixels(saturatedPixelsGreen + dim) = 0;
saturatedPixels(saturatedPixelsGreen + 2*dim) = 0;
saturatedPixels(saturatedPixelsBlue) = 0;
saturatedPixels(saturatedPixelsBlue + dim) = 0;
saturatedPixels(saturatedPixelsBlue + 2*dim) = 0;
hdrMap = hdrMap .* saturatedPixels;
sum = sum .* saturatedPixels;

dim = size(X5,1) * size(X5,2);
saturatedPixels = ones(size(X5));    
saturatedPixelsRed = find(X5(:,:,1) == 255);
saturatedPixelsGreen = find(X5(:,:,2) == 255);
saturatedPixelsBlue = find(X5(:,:,3) == 255);
saturatedPixels(saturatedPixelsRed) = 0;
saturatedPixels(saturatedPixelsRed + dim) = 0;
saturatedPixels(saturatedPixelsRed + 2*dim) = 0;
saturatedPixels(saturatedPixelsGreen) = 0;
saturatedPixels(saturatedPixelsGreen + dim) = 0;
saturatedPixels(saturatedPixelsGreen + 2*dim) = 0;
saturatedPixels(saturatedPixelsBlue) = 0;
saturatedPixels(saturatedPixelsBlue + dim) = 0;
saturatedPixels(saturatedPixelsBlue + 2*dim) = 0;
hdrMap = hdrMap .* saturatedPixels;
sum = sum .* saturatedPixels;

dim = size(X6,1) * size(X6,2);
saturatedPixels = ones(size(X6));    
saturatedPixelsRed = find(X6(:,:,1) == 255);
saturatedPixelsGreen = find(X6(:,:,2) == 255);
saturatedPixelsBlue = find(X6(:,:,3) == 255);
saturatedPixels(saturatedPixelsRed) = 0;
saturatedPixels(saturatedPixelsRed + dim) = 0;
saturatedPixels(saturatedPixelsRed + 2*dim) = 0;
saturatedPixels(saturatedPixelsGreen) = 0;
saturatedPixels(saturatedPixelsGreen + dim) = 0;
saturatedPixels(saturatedPixelsGreen + 2*dim) = 0;
saturatedPixels(saturatedPixelsBlue) = 0;
saturatedPixels(saturatedPixelsBlue + dim) = 0;
saturatedPixels(saturatedPixelsBlue + 2*dim) = 0;
hdrMap = hdrMap .* saturatedPixels;
sum = sum .* saturatedPixels;
hdrMap = hdrMap ./ sum;
%}

%imtool(hdrMap);

%---------------------------------------------------------------------%


%---------------------------------------------------------------------%
%XN=cat(7,X1,X2,X3,X4,X5,X6);
%hdr_image=uint8(mean(XN,7));
%imtool(hdr_image);
%{
newToneMap = hdr_image;
imtool(newToneMap);
imtool(newToneMap*0.1);
imtool(newToneMap*0.3);
imtool(newToneMap*0.5);
imtool(newToneMap*0.8);
imtool(newToneMap*1.0);
imtool(newToneMap*1.3);
imtool(newToneMap*1.5);
imtool(newToneMap*1.7);
imtool(newToneMap*2.0);
imtool(newToneMap*2.5);
imtool(newToneMap*3.0);
imtool(newToneMap*3.5);
imtool(newToneMap*4.0);
imtool(newToneMap*5.0);
imtool(newToneMap*6.0);
%}
TM = tonemap(double(hdr_image));

%{
imtool(TM);

imtool(TM*0.1);
imtool(TM*0.3);
imtool(TM*0.5);
imtool(TM*0.8);
imtool(TM*1.0);
imtool(TM*1.3);
imtool(TM*1.5);
imtool(TM*1.7);
imtool(TM*2.0);
imtool(TM*2.5);
imtool(TM*3.0);
imtool(TM*3.5);
imtool(TM*4.0);
imtool(TM*5.0);
imtool(TM*6.0);
%}
%subplot(1, 2, 1), imshow(TM);
%---------------------------------------------------------------------%


%---------------------------------------------------------------------%
%%{
files = {'office_1.jpg', 'office_2.jpg', 'office_3.jpg',
         'office_4.jpg', 'office_5.jpg', 'office_6.jpg'};
expTimes = [exposureTime1, exposureTime2, exposureTime3, exposureTime4, exposureTime5, exposureTime6];
 
%hdr_matlab = makehdr(files, 'RelativeExposure', expTimes ./ expTimes(1));
%hdr_matlab = makehdr(files, 'ExposureValues', expTimes);
hdr_matlab = makehdr(files, 'ExposureValues', expTimes);
tonemapMatlab = tonemap(hdr_matlab);
%%}
%imtool(tonemapMatlab);
%imtool(hdr_matlab);
%figure; imshow(rgb);
%subplot(1, 2, 2), imshow(rgb);
%---------------------------------------------------------------------%



%---------------------------------------------------------------------%
%{
L = rgb2gray(hdr_image);
L_ = exp(mean2(log10(double(double(L+1)))));
Ls = double(0.18./L_)*L;
%Ls = (0.36*L)/L_;
Ls_1 = 1+Ls;
Lg = Ls./Ls_1;
[w, h, c] = size(hdr_image);
newToneMap = I1;
newToneMap(:,:,1) = hdr_image(:,:,1).*Lg;
newToneMap(:,:,2) = hdr_image(:,:,2).*Lg;
newToneMap(:,:,3) = hdr_image(:,:,3).*Lg;
%}
%Lg = uint8(Lg*255);
%Lg_rgb = cat(3, Lg/0.299, Lg/0.587, Lg/0.114);
%Lg_rgb = Lg;
%rgbImage = ind2rgb(Lg, jet(256));
%imtool(hdr_image);
%imtool(newToneMap);
%delta = hdr_image - newToneMap;
%{
imtool(newToneMap*0.3);
imtool(newToneMap*0.5);
imtool(newToneMap*0.8);
imtool(newToneMap*1.0);
imtool(newToneMap*1.3);
imtool(newToneMap*1.5);
imtool(newToneMap*1.7);
imtool(newToneMap*2.0);
imtool(newToneMap*2.5);
imtool(newToneMap*3.0);
imtool(newToneMap*3.5);
imtool(newToneMap*4.0);
imtool(newToneMap*5.0);
imtool(newToneMap*6.0);
%}