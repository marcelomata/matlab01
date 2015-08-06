function [ SNR, PSNR ] = calculo( desvio )

I = double(imread('cameraman.tif'));
I_noisy = double(imnoise(I,'salt & pepper',desvio));
I_max = max(max(I));
I_min = min(min(I));
A = (I_max - I_min);
SNR = 10 * log10(std2(I)^2 / std2(I - I_noisy)^2);
PSNR = 10 * log10((A^2) / (std2(I - I_noisy)^2));

end

