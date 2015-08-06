
%% 1)

waves = {'key1_1.wav','key1_2.wav','key8_1.wav','key8_2.wav'};

for i=1:length(waves)
    [s,fs] = wavread(waves{i});
    Fw = abs(fft(s));
    wnyq = fs/2;
    wnyqInd = round(length(s)/2);
    w = (1:wnyqInd)/wnyqInd;
    w = w*wnyq;
    [m1,i1] = max(Fw(1:wnyqInd));
    Fw(i1) = 0;
    [m2,i2] = max(Fw(1:wnyqInd));
    fd = sort([w(i1) w(i2)]);
    fprintf('*** %s , Hz: %d ***\n', waves{i}, fs);
    fprintf('Freq1: %5.4d; Freq2: %5.4d\n',fd(1),fd(2));
end

%% 2)

I = imread('noisy_square.bmp');

Fw = fft2(I);
Fw2 = fftshift(Fw);
r = 100;
c = [size(Fw,1)/2 size(Fw,2)/2];
for i=1:size(Fw,1)
    for j=1:size(Fw,2)
        if (norm([i j] - c) > r)
            Fw2(i,j) = 0;
        end
    end
end
Fw = ifftshift(Fw2);
In = ifft2(Fw);
imshow(abs(In)/255);

