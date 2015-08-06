D = load('data5.mat');
data51 = D.d51;
data52 = D.d52;

X1 = int16(data51(4:4:end, 1));
Y1 = int16(data51(4:4:end, 2));
Z1 = int16(data51(4:4:end, 3));

X2 = int16(data52(4:4:end, 1));
Y2 = int16(data52(4:4:end, 2));
Z2 = int16(data52(4:4:end, 3));

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

[wR51 wI51] = dft1(X1,100);
[wR52 wI52] = dft1(X2,100);

[nwR51 nwI51] = dft1(nX1,100);
[nwR52 nwI52] = dft1(nX2,100);
[nwR51 nwI51] = dft1(nX1,40);
[nwR52 nwI52] = dft1(nX2,40);
[nwR c] = size(nwR51);
[nwI c] = size(nwI51);
diffnwR = sum(double(nwR52 - nwR51))/double(nwR);
diffnwI = sum(double(nwI52 - nwI51))/double(nwI);
%plot(diffnwR);
%plot(diffnwI);
subplot(1, 2, 1);
plot(nwR51);
subplot(1, 2, 2);
plot(nwI51);

subplot(1, 2, 1);
plot(nwR52);
subplot(1, 2, 2);
plot(nwI52);



iw51 = idft1(wR51, wI51,100);
iw52 = idft1(wR52, wI52,100);

niw51 = idft1(nwR51, nwI51,100);
niw52 = idft1(nwR52, nwI52,100);

niw51 = idft1(nwR51, nwI51,40);
niw52 = idft1(nwR52, nwI52,40);

subplot(1, 2, 1);
plot(iw51);
subplot(1, 2, 2);
plot(iw52);

subplot(1, 2, 1);
plot(niw51);
subplot(1, 2, 2);
plot(niw52);

[niw c] = size(niw51);
diff = sum(double(niw51 - niw52))/double(niw);
plot(diff);



