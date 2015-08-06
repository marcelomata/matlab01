[A, Fs, nbits, readinfo] = wavread('cmp266_pratica3/key8_2.wav');
T = 2*pi/Fs;
DF = fft(A);
plot(A);
plot(DF);
[N b] = size(A);
n = 0 : (N-1);
x = T*cos(10*pi*n*T);
X = fft(x);