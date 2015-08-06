image = imread('moon.jpg');
alpha_hat = imread('GT04.png');
confidence = imread('GT04_gt.png');
trimap = imread('GT04_trimap.png');
size(alpha_hat);
%pack = cat(alpha_hat,confidence,trimap);
SharedMatting(image, alpha_hat);

