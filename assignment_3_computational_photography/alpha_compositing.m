%B  = im2double(imread('images_alpha/background.png')); 
%B  = im2double(imread('images_alpha/china_1.jpg')); 
%B  = im2double(imread('images_alpha/china_4.jpeg')); 
B  = im2double(imread('images_alpha/Shanghai.jpg')); 

F = im2double(imread('images_alpha/GT04.png')); 
alpha = im2double(imread('images_alpha/GT04_alpha.png')); 

[w h c] = size(B);
im_comp = zeros(w, h, c);

im_comp = alpha.*F+(1-alpha).*B;

imtool(im_comp);
imtool(F);
imtool(alpha);