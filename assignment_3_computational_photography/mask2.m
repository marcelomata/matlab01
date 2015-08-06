im_left  = im2double(imread('images_part_2/GT04_r3.png'));
mask0    = im2double(imread('images_part_2/selfie.jpg')); 

[w h c] = size(im_left);
%im_left = zeros(wmask, hmask, 1);
%trashold = 0.95;
for j = 1: w
    for i = 1: h
       mask0(j+1200,i+1750,:) = im_left(j,i,:);
    end;
end;

imtool(mask0);
imtool(im_left);

imwrite(mask0,'images_part_2/selfie_F3.jpg','jpg');