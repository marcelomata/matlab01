D = load('data3.mat');
data = D.d3;
minX = -2000;
maxX = 2000;
minY = -2000;
maxY = 2000;
minZ = -2000;
maxZ = 2000;
X = int16(data(4:4:end, 1));
Y = int16(data(4:4:end, 2));
Z = int16(data(4:4:end, 3));

axis([minX maxX minY maxY minZ maxX])
hold on
plot3(X,Y,Z);
plot(X)
plot(Y)
plot(Z)

wx = fft(double(X), 500);
minX = -20000;
maxX = 20000;
minY = -20000;
maxY = 20000;
axis([minX maxX minY maxY])
plot(wx);
iwx = ifft(wx, 100);
plot(iwx);

wx = fft(double(X), 100);
iwx = ifft(wx, 100);
plot(iwx);


plot3(double(X),double(Y),double(Z));%%como fazer isso


x1 = [1 2 3 4 5 6 7 8 9];
X = uint16(X);
X = X(:)