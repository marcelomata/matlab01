im_left  = im2double(imread('images_alpha_blending/checker.jpg')); 
im_right = im2double(imread('images_alpha_blending/mandrill.jpg')); 

imtool(im_left);
imtool(im_right);

[w h c] = size(im_left);
im_comp = zeros(w, h, c);

im_comp(:,1:128,:) = im_left(:,1:128,:);
im_comp(:,128:256,:) = im_right(:,128:256,:);

alpha = 1;
inc = 1/40;
for i = 108: 148
    im_comp(:,i,:) = im_left(:,i,:)*alpha + im_right(:,i,:)*(1 - alpha);
    alpha = alpha - inc;
end