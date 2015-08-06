im_left  = im2double(imread('images_part_2/GT04_alpha_r3.png'));
mask0    = im2double(imread('images_part_2/mask0_02.jpg')); 

im_left = rgb2gray(im_left);
[w h] = size(im_left);
[wmask hmask] = size(mask0);
mask0 = zeros(wmask, hmask, 3);
%im_left = zeros(wmask, hmask, 1);
%trashold = 0.95;
for j = 1: w
    for i = 1: h
        mask0(j+1200,i+1750,:) = im_left(j,i,:);
    end;
end;

imtool(mask0);
imtool(im_left);

imwrite(mask0,'images_part_2/mask0.jpg','jpg');