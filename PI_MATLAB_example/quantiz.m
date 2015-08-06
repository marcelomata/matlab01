I = double(imread('cameraman.tif'));
I_q = floor(I./max(max(I))(.*(2^3));
figure, imshow(uint8(I)), title('original');
figure, imshow(uint8(I_q .* 40)), title('requant');

[sx, sy] = size(I);
A = max(max(I))/5;
I_noise = rand(sx,sy) .* A;
I_qn = floor((I + I_noise) ./ max(max(I + I_noise)) .* (2^3));
figure, imshow(uint8(I_qn .* 40)), title('ruido');