
T = 1240;
w = 6;

A = zeros(T);

t = 2*pi/T;
c = 0;

for i=1: T
    A(i) = sin(c*w);
    c = c+t;
end;


plot(A);

f = inline('x.^2');
x = -1:0.005:1;
x2 = -2:0.005:2;
y = f(x);
plot(x, f(x));
ft = fft(y);
ft2 = [ft ft];
plot(x2, ft2);
plot(x,ifft(fft(y)));