D = load('data2.mat');
data = D.d2;
minX = -2000;
maxX = 2000;
minY = -2000;
maxY = 2000;
minZ = -2000;
maxZ = 2000;
X = int16(data(3:4:end, 1));
Y = int16(data(3:4:end, 2));
Z = int16(data(3:4:end, 3));

axis([minX maxX minY maxY minZ maxX])
hold on
plot3(X,Y,Z);
plot(X)
plot(Y)
plot(Z)

plot3(double(X),double(Y),double(Z));%%como fazer isso


x1 = [1 2 3 4 5 6 7 8 9];
X = uint16(X);
X = X(:)