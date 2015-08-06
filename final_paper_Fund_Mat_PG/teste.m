x = [];
y = [];
z = [];
test = [];
x1 = [];
y1 = [];
varY1 = 100;
varX1 = 100;
l = 50;
cont = 1;
for i=cont:(l+cont-1)
    x1(i) = varX1;
    y1(i)= varY1;
    varY1 = varY1+1;
    cont = cont+1;
end;
for i=cont:(l+cont-1)
    x1(i) = varX1;
    y1(i)= varY1;
    varX1 = varX1+1;
    cont = cont+1;
end;
for i=cont:(l+cont-1)
    x1(i) = varX1;
    y1(i)= varY1;
    varY1 = varY1-1;
    cont = cont+1;
end;
for i=cont:(l+cont-1)
    x1(i) = varX1;
    y1(i)= varY1;
    varX1 = varX1-1;
    cont = cont+1;
end;

varY = 1;
for i=1:(l/2)
    x(i) = 5;
    y(i)= varY;
    z(i)= 5;
    test(i) = rand*100;
    varY = varY+1;
end;

varX = 5;
varZ = 5;
for i=(l/2)+1:l
    x(i) = varX;
    y(i)= varY;
    z(i)= varZ;
    test(i) = rand*100;
    varX = varX+1;
    varZ = varZ+1;
end;

max = 150;
min = 1;
%axis([-ax ax -ax ax -ax ax])
%axis([min max min max min max])
%{
axis([min max min max])
hold on
plot(x);
plot(y);
plot(z);
%}
%%{
%axis([min max min max])
axis([0 300 0 300])
hold on
%%}
plot(x1,y1);
%plot(test);
%plot3(x, y, z);

wx = fft(x, 5);
wy = fft(y, 5);
wz = fft(z, 5);

wx1 = fft(x1, 250);
wy1 = fft(y1, 250);
wtest = fft(txest, 5);

%axis([min max min max min max])
%{
axis([min max min max])
hold on
plot(wx);
plot(wy);
plot(wz);
%}
%{
axis([min max min max])
hold on
%}
plot(wtest);

axis([0 300 0 300])
hold on
plot(wx1,wy1);
%plot3(wx, wy, wz);

itest = ifft(wtest,l);
ix1 = ifft(wx1,l);
iy1 = ifft(wy1,l);
%{
axis([min max min max])
hold on
%}
plot(itest);

axis([0 300 0 300])
hold on
plot(ix1,iy1);
