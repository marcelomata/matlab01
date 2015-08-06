function ret = imshift(img, dy, dx)
T = maketform('affine', [1 0 0; 0 1 0; dx dy 1]);   %# represents translation
ret = imtransform(img, T, 'XData',[1 size(img,2)], 'YData',[1 size(img,1)]);