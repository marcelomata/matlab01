%im_left  = im2double(imread('images_part_2/selfie.jpg'));
%im_left  = im2double(imread('images_pyramid_b/lilica_mask.png'));
%mask0    = im2double(imread('images_part_2/mask0.jpg')); 

%{
im_left = rgb2gray(im_left);
[w h] = size(im_left);
mask0 = zeros(w, h, 1);
trashold = 0.95;
for j = 1: w
    for i = 1: h
        if im_left(j,i) == 1
            mask0(j,i) =  1;
        else
            mask0(j,i) =  0;
        end;
    end;
end;

%imshow(mask0);
%imtool(im_left);

imwrite(mask0,'images_part_2/mask0.jpg','jpg');
%}

B  = im2double(imread('images_part_2/selfie.jpg'));
F = im2double(imread('images_part_2/selfie_F3.jpg')); 
alpha = im2double(imread('images_part_2/mask0.jpg'));

[w h c] = size(B);
im_comp = zeros(w, h, c);

im_comp = alpha.*F+(1-alpha).*B;

imtool(im_comp);