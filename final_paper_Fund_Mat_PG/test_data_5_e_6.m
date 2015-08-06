D5 = load('data5.mat');
data51 = D5.d51;
X51 = int16(data51(4:4:end, 1));
nX51 = double(X51)/double(max(abs(X51)));

D6 = load('data6.mat');
data61 = D6.d61;
X61 = int16(data61(4:4:end, 1));
nX61 = double(X61)/double(max(abs(X61)));

subplot(1, 2, 1);
plot(X51);
subplot(1, 2, 2);
plot(X61);

subplot(1, 2, 1);
plot(nX51);
subplot(1, 2, 2);
plot(nX61);

[wR51 wI51] = dft1(X51,100);
[wR61 wI61] = dft1(X61,100);

[nwR51 nwI51] = dft1(nX51,100);
[nwR61 nwI61] = dft1(nX61,100);
[nwR51 nwI51] = dft1(nX51,40);
[nwR61 nwI61] = dft1(nX61,40);
[nwR c] = size(nwR51);
[nwI c] = size(nwI51);
diffnwR = sum(double(nwR61 - nwR51))/double(nwR);
diffnwI = sum(double(nwI61 - nwI51))/double(nwI);
%plot(diffnwR);
%plot(diffnwI);
subplot(1, 2, 1);
plot(nwR51);
subplot(1, 2, 2);
plot(nwI51);

subplot(1, 2, 1);
plot(nwR61);
subplot(1, 2, 2);
plot(nwI61);



iw51 = idft1(wR51, wI51,100);
iw61 = idft1(wR61, wI61,100);

niw51 = idft1(nwR51, nwI51,100);
niw61 = idft1(nwR61, nwI61,100);

niw51 = idft1(nwR51, nwI51,40);
niw61 = idft1(nwR61, nwI61,40);

subplot(1, 2, 1);
plot(iw51);
subplot(1, 2, 2);
plot(iw61);

subplot(1, 2, 1);
plot(niw51);
subplot(1, 2, 2);
plot(niw61);

[niw c] = size(niw51);
diff = sum(double(niw51 - niw61))/double(niw);
plot(diff);



