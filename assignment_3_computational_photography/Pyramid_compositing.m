
clc;
clear all;
close all;

%--------------------------------------------------------------------------
%load images

im_left  = im2double(imread('images_pyramid/hand_00.png')); 
im_right = im2double(imread('images_pyramid/eye_00.png')); 
mask0    = im2double(imread('images_pyramid/mask_00.png')); 

im_right = im_right - 0.25; 
%imshow(im_right);

if size(im_left) ~= size(im_right) 
    disp('error images sizes are different');
    return;
end;

mask = mask0(:,:,1); %force monocrome

if size(im_left,1) ~= size(mask,1) |  size(im_left,2) ~= size(mask,2)
    disp('error mask and images sizes are different');
    return;
end;

[R C CH] = size(im_left);

%--------------------------------------------------------------------------
%simple merge

for k = 1:CH
    im_seam(:,:,k) = mask(:,:) .* im_right(:,:,k) + (1-mask(:,:)) .* im_left(:,:,k);
end;

%--------------------------------------------------------------------------
%sequence merge

Gaussian_filter = fspecial('gaussian', 40, 3);
Levels = 20; 

%..........................................................................
%declare images 

im_left_gaussian  = zeros(R,C, CH, Levels);
im_left_laplacian = zeros(R,C, CH, Levels);

im_right_gaussian = zeros(R,C, CH, Levels);
im_left_laplacian = zeros(R,C, CH, Levels);

mask_gaussian     = zeros(R,C, Levels);
im_temp           = zeros(R,C, CH, Levels);
im_out            = zeros(R,C, CH);

%..........................................................................
%Build gaussian and Laplacian sequences

%copy images to first gaussian sequence positions
im_left_gaussian (:,:,:,1) = im_left (:,:,:);
im_right_gaussian(:,:,:,1) = im_right(:,:,:);
mask_gaussian    (:,:,1)   = mask    (:,:);

%mask gaussian sequence
for Level = 2:Levels
    mask_gaussian    (:,:,Level) = imfilter(mask_gaussian (:,:,Level-1), Gaussian_filter, 'replicate');
end;
%imshow(mask_gaussian(:,:,20));


for k = 1:CH
    
    %images gaussian sequences
    for Level = 2:Levels
        im_left_gaussian (:,:,k,Level) = imfilter(im_left_gaussian  (:,:,k,Level-1), Gaussian_filter, 'replicate');
        im_right_gaussian(:,:,k,Level) = imfilter(im_right_gaussian (:,:,k,Level-1), Gaussian_filter, 'replicate');
    end;    
    %imshow(im_right_gaussian(:,:,:,20));

    %images laplacian sequences
    for Level = 1:Levels-1
        im_left_laplacian (:,:,k,Level) =  im_left_gaussian(:,:,k,Level)  - im_left_gaussian (:,:,k,Level+1);
        im_right_laplacian(:,:,k,Level) =  im_right_gaussian(:,:,k,Level) - im_right_gaussian(:,:,k,Level+1);
    end;

    %add last gaussian to laplacian sequence
    im_left_laplacian (:,:,k,Levels) =  im_left_gaussian (:,:,k,Levels);
    im_right_laplacian(:,:,k,Levels) =  im_right_gaussian(:,:,k,Levels);
    %imshow(im_right_laplacian(:,:,:,20));
end;

%..........................................................................
%blend

im_out            = zeros(R,C, CH);

for k = 1:CH
    for Level = 1:Levels
        im_out(:,:,k) = im_out(:,:,k) + ...
                 mask_gaussian(:,:,Level)  .* im_right_laplacian(:,:,k,Level) + ...
            (1 - mask_gaussian(:,:,Level)) .* im_left_laplacian (:,:,k,Level);
    end;
end;
%imshow(im_out(:,:,:));

%--------------------------------------------------------------------------

figure; 
subplot(2,2,1); imshow(im_left); 
subplot(2,2,2); imshow(im_right);  
subplot(2,2,3); imshow(im_seam); 
subplot(2,2,4); imshow(im_out); 

figure; 
imshow(im_out); 
imshow(mask_gaussian); 

