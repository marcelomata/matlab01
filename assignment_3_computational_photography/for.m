
%---------------------------------------------------------------------%
%{
%resultado muito estranho, independente dos outros processamentos
I1 = uint8((double(I1/255).^2.2)*255);
I2 = uint8((double(I2/255).^2.2)*255);
I3 = uint8((double(I3/255).^2.2)*255);
I4 = uint8((double(I4/255).^2.2)*255);
I5 = uint8((double(I5/255).^2.2)*255);
I6 = uint8((double(I6/255).^2.2)*255);
%}
%---------------------------------------------------------------------%

%---------------------------------------------------------------------%
%{
%resultado muito estranho, independente dos outros processamentos
X1 = I1;
[w1 h1 c1] = size(I1);
for i = 1:w1  
    X1(i,:,1) = exp(C((round(I1(i,:,1)+1)*3)+1));
    X1(i,:,2) = exp(C((round(I1(i,:,2)+1)*3)+2));
    X1(i,:,3) = exp(C((round(I1(i,:,3)+1)*3)+3));
end;

X2 = I2;
[w2 h2 c2] = size(I2);
for i = 1:w1  
    X2(i,:,1) = exp(C((round(I2(i,:,1)+1)*3)+1));
    X2(i,:,2) = exp(C((round(I2(i,:,2)+1)*3)+2));
    X2(i,:,3) = exp(C((round(I2(i,:,3)+1)*3)+3));
end;

X3 = I3;
[w3 h3 c3] = size(I3);
for i = 1:w3  
    X3(i,:,1) = exp(C((round(I3(i,:,1)+1)*3)+1));
    X3(i,:,2) = exp(C((round(I3(i,:,2)+1)*3)+2));
    X3(i,:,3) = exp(C((round(I3(i,:,3)+1)*3)+3));
end;

X4 = I4;
[w4 h4 c4] = size(I4);
for i = 1:w1  
    X4(i,:,1) = exp(C((round(I4(i,:,1)+1)*3)+1));
    X4(i,:,2) = exp(C((round(I4(i,:,2)+1)*3)+2));
    X4(i,:,3) = exp(C((round(I4(i,:,3)+1)*3)+3));
end;

X5 = I5;
[w5 h5 c5] = size(I5);
for i = 1:w1  
    X5(i,:,1) = exp(C((round(I5(i,:,1)+1)*3)+1));
    X5(i,:,2) = exp(C((round(I5(i,:,2)+1)*3)+2));
    X5(i,:,3) = exp(C((round(I5(i,:,3)+1)*3)+3));
end;

X6 = I6;
[w6 h6 c6] = size(I6);
for i = 1:w1  
    X6(i,:,1) = exp(C((round(I6(i,:,1)+1)*3)+1));
    X6(i,:,2) = exp(C((round(I6(i,:,2)+1)*3)+2));
    X6(i,:,3) = exp(C((round(I6(i,:,3)+1)*3)+3));
end;
%}
%---------------------------------------------------------------------%

%{
    imtool(I1);
    imtool(I2);
    imtool(I3);
    imtool(I4);
    imtool(I5);
    imtool(I6);

    exposureTime1
    exposureTime2
    exposureTime3
    exposureTime4
    exposureTime5
    exposureTime6

X1 = uint8(I1*255);
X2 = uint8(I2*255);
X3 = uint8(I3*255);
X4 = uint8(I4*255);
X5 = uint8(I5*255);
X6 = uint8(I6*255);
%}

%---------------------------------------------------------------------%
%{
minLum = 0;
maxLum = 255;
x = find(X1 <= minLum);
X1(x(:)) = minLum;
x = find(X1 >= maxLum);
X1(x(:)) = maxLum;

x = find(X2 <= minLum);
X2(x(:)) = minLum;
x = find(X2 >= maxLum);
X2(x(:)) = maxLum;

x = find(X3 <= minLum);
X3(x(:)) = minLum;
x = find(X3 >= maxLum);
X3(x(:)) = maxLum;

x = find(X4 <= minLum);
X4(x(:)) = minLum;
x = find(X4 >= maxLum);
X4(x(:)) = maxLum;

x = find(X5 <= minLum);
X5(x(:)) = minLum;
x = find(X5 >= maxLum);
X5(x(:)) = maxLum;

x = find(X6 <= minLum);
X6(x(:)) = minLum;
x = find(X6 >= maxLum);
X6(x(:)) = maxLum;
%}
%---------------------------------------------------------------------%


%---------------------------------------------------------------------%
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


