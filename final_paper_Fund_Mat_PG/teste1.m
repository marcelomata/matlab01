clc;
clear all;
close all;
%--------------------------------------------------------
%--------------------------------------------------------
%--------------------------------------------------------

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
for i=cont:(l+cont)
    x1(i) = varX1;
    y1(i)= varY1;
    varX1 = varX1-1;
    cont = cont+1;
end;

max = 150;
min = 1;
%axis([-ax ax -ax ax -ax ax])
%axis([min max min max min max])
%{
axis([min max min max])
hold on
%}
%%{
%axis([min max min max])
axis([0 300 0 300])
hold on
%%}
plot(x1,y1);

wx1 = fft(x1, 201);
wy1 = fft(y1, 201);
wxy1 = fft2([x1 y1]);

%axis([min max min max min max])
%{
axis([min max min max])
hold on
%}
axis([0 3000 0 3000])
hold on
plot(wx1);
axis([0 3000 0 3000])
hold on
plot(wy1);
plot(wx1,wy1);
%plot(wxy1);

ix1 = ifft(wx1,201);
iy1 = ifft(wy1,201);

axis([0 300 0 300])
hold on
plot(ix1,iy1);
