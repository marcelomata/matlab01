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

[wR61 wI61] = dft1(X1,100);
[wR62 wI62] = dft1(X2,100);

[nwR61 nwI61] = dft1(nX1,100);
[nwR62 nwI62] = dft1(nX2,100);

plot(nwR61 + 1*i*nwI61);

[nwR c] = size(nwR61);
[nwI c] = size(nwI61);
diffnwR = sum(double(nwR62 - nwR61))/double(nwR);
diffnwI = sum(double(nwI62 - nwI61))/double(nwI);
diffnwR
diffnwI
%plot(diffnwR);
%plot(diffnwI);

iw61 = idft1(wR61, wI61,100);
iw62 = idft1(wR62, wI62,100);

niw61 = idft1(nwR61, nwI61,100);
niw62 = idft1(nwR62, nwI62,100);

subplot(1, 2, 1);
plot(iw61);
subplot(1, 2, 2);
plot(iw62);

subplot(1, 2, 1);
plot(niw61);
subplot(1, 2, 2);
plot(niw62);

[niw c] = size(niw61);
diff = sum(double(niw61 - niw62))/double(niw);
diff
%plot(diff);



