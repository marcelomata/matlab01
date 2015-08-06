D = load('data6.mat');
data61 = D.d61;
data62 = D.d62;

X1 = int16(data61(4:4:end, 1));
Y1 = int16(data61(4:4:end, 2));
Z1 = int16(data61(4:4:end, 3));

X2 = int16(data62(4:4:end, 1));
Y2 = int16(data62(4:4:end, 2));
Z2 = int16(data62(4:4:end, 3));

nX1 = double(X1)/double(max(abs(X1)));
nX2 = double(X2)/double(max(abs(X2)));

subplot(1, 2, 1);
plot(X1);
subplot(1, 2, 2);
plot(X2);

subplot(1, 2, 1);
plot(nX1);
subplot(1, 2, 2);
plot(nX2);

[n c] = size(nX1);
diff = sum(double(nX1 - nX2))/double(n);
diff
%plot(diff);

