D = load('data3.mat');
data31 = D.d31;
data32 = D.d32;

X1 = int16(data31(4:4:end, 1));
Y1 = int16(data31(4:4:end, 2));
Z1 = int16(data31(4:4:end, 3));

X2 = int16(data32(4:4:end, 1));
Y2 = int16(data32(4:4:end, 2));
Z2 = int16(data32(4:4:end, 3));

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

[wR31 wI31] = dft1(X1,100);
[wR32 wI32] = dft1(X2,100);

[nwR31 nwI31] = dft1(nX1,100);
[nwR32 nwI32] = dft1(nX2,100);
[nwR31 nwI31] = dft1(nX1,40);
[nwR32 nwI32] = dft1(nX2,40);
[nwR c] = size(nwR31);
[nwI c] = size(nwI31);
diffnwR = sum(double(nwR32 - nwR31))/double(nwR);
diffnwI = sum(double(nwI32 - nwI31))/double(nwI);
%plot(diffnwR);
%plot(diffnwI);
subplot(1, 2, 1);
plot(nwR31);
subplot(1, 2, 2);
plot(nwI31);

subplot(1, 2, 1);
plot(nwR32);
subplot(1, 2, 2);
plot(nwI32);



iw31 = idft1(wR31, wI31,100);
iw32 = idft1(wR32, wI32,100);

niw31 = idft1(nwR31, nwI31,100);
niw32 = idft1(nwR32, nwI32,100);

niw31 = idft1(nwR31, nwI31,40);
niw32 = idft1(nwR32, nwI32,40);

subplot(1, 2, 1);
plot(iw31);
subplot(1, 2, 2);
plot(iw32);

subplot(1, 2, 1);
plot(niw31);
subplot(1, 2, 2);
plot(niw32);

[niw c] = size(niw31);
diff = sum(double(niw31 - niw32))/double(niw);
plot(diff);



