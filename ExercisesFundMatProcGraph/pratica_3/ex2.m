I = imread('cmp266_pratica3/noisy_square.bmp');
imtool(I);
If = fft2(I);
If(1:5,1:5)
If = fftshift(If);
mask = fspecial('gaussian', 256, 10);
mask = mask*10000;
for i = 0:h
   for j = 0:w
       
   end;
end;
If = If*mask;
If = ifftshift(If);
I = ifft2(If);
imtool(I);
