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
%funciona quando utilizado todo o processamento que está funcionando
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
%%{
%funciona quando utilizado todo o processamento que está funcionando
X1 = uint8(exp(C(round(I1+1)))*255);
X2 = uint8(exp(C(round(I2+1)))*255);
X3 = uint8(exp(C(round(I3+1)))*255);
X4 = uint8(exp(C(round(I4+1)))*255);
X5 = uint8(exp(C(round(I5+1)))*255);
X6 = uint8(exp(C(round(I6+1)))*255);
%%}
%---------------------------------------------------------------------%


%---------------------------------------------------------------------%

%x = X1;

%%ver como fazer com find index
x = find(X1 <= 7);
X1(x(:)) = 7;

x = find(X2 <= 7);
X2(x(:)) = 7;

x = find(X3 <= 7);
X3(x(:)) = 7;
x = find(X3 >= 250);
X3(x(:)) = 250;

x = find(X4 <= 7);
X4(x(:)) = 7;
x = find(X4 >= 250);
X4(x(:)) = 250;

x = find(X5 >= 250);
X5(x(:)) = 250;

x = find(X6 >= 250);
X6(x(:)) = 250;

XN=cat(7,X1,X2,X3,X4,X5,X6);
avarage=uint8(mean(XN,7));
%TM = tonemap(avarage);
%{
imtool(XN);
imtool(TM);
%}
%subplot(1, 2, 1), imshow(TM);
%---------------------------------------------------------------------%


%---------------------------------------------------------------------%
%%{
files = {'office_1.jpg', 'office_2.jpg', 'office_3.jpg',
         'office_4.jpg', 'office_5.jpg', 'office_6.jpg'};
expTimes = [exposureTime1, exposureTime2, exposureTime3, exposureTime4, exposureTime5, exposureTime6];
 
%hdr = makehdr(files, 'RelativeExposure', expTimes ./ expTimes(1));
hdr = makehdr(files, 'ExposureValues', expTimes);
tonemapMatlab = tonemap(hdr);
%%}
%imtool(tonemapMatlab);
%figure; imshow(rgb);
%subplot(1, 2, 2), imshow(rgb);
%---------------------------------------------------------------------%



%---------------------------------------------------------------------%
L = rgb2gray(avarage);
L_ = exp(mean2(log10(double((L+1)/255))));
Ls = (0.18*L)/L_;
%Ls = (0.36*L)/L_;
Ls_1 = 1+Ls;
Lg = Ls./Ls_1;
[w, h, c] = size(avarage);
newToneMap = I1;
newToneMap(:,:,1) = avarage(:,:,1).*Lg;
newToneMap(:,:,2) = avarage(:,:,2).*Lg;
newToneMap(:,:,3) = avarage(:,:,3).*Lg;
%Lg = uint8(Lg*255);
%Lg_rgb = cat(3, Lg/0.299, Lg/0.587, Lg/0.114);
%Lg_rgb = Lg;
%rgbImage = ind2rgb(Lg, jet(256));
imtool(newToneMap);
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