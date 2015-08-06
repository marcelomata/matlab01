D = load('data8.mat');
data81 = D.d81;
data82 = D.d82;

X1 = int16(data81(4:4:end, 1));
Y1 = int16(data81(4:4:end, 2));
Z1 = int16(data81(4:4:end, 3));

X2 = int16(data82(4:4:end, 1));
Y2 = int16(data82(4:4:end, 2));
Z2 = int16(data82(4:4:end, 3));

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

[wR81 wI81] = dft1(X1,100);
[wR82 wI82] = dft1(X2,100);

[nwR81 nwI81] = dft1(nX1,100);
[nwR82 nwI82] = dft1(nX2,100);
[nwR c] = size(nwR81);
[nwI c] = size(nwI81);
diffnwR = sum(double(nwR82 - nwR81))/double(nwR);
diffnwI = sum(double(nwI82 - nwI81))/double(nwI);
diffnwR
diffnwI
%plot(diffnwR);s
%plot(diffnwI);

iw81 = idft1(wR81, wI81,100);
iw82 = idft1(wR82, wI82,100);

niw81 = idft1(nwR81, nwI81,100);
niw82 = idft1(nwR82, nwI82,100);

subplot(1, 2, 1);
plot(iw81);
subplot(1, 2, 2);
plot(iw82);

subplot(1, 2, 1);
plot(niw81);
subplot(1, 2, 2);
plot(niw82);

[niw c] = size(niw81);
diff = sum(double(niw81 - niw82))/double(niw);
diff
%plot(diff);



