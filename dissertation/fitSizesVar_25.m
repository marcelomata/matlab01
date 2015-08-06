intensities = load('intensities.mat');
Y00 = intensitiesFit(intensities.Y00, 3);
Y07 = intensitiesFit(intensities.Y07, 3);
Y10 = intensitiesFit(intensities.Y10, 3);
Y15 = intensitiesFit(intensities.Y15, 3);
Y20 = intensitiesFit(intensities.Y20, 3);
Y25 = intensitiesFit(intensities.Y25, 3);
Y30 = intensitiesFit(intensities.Y30, 3);

n = size(Y07);
V = [Y00(:), Y07(:), Y10(:), Y15(:), Y20(:), Y25(:), Y30(:)];
T1 = [0 7 10 15 20 25 30];

c2 = getCoef(V, T1, 2);
c3 = getCoef(V, T1, 3);
c4 = getCoef(V, T1, 4);
c5 = getCoef(V, T1, 5);
c6 = getCoef(V, T1, 6);

Y001Fit2 = getFit(0.1, c2, 2);
Y01Fit2 = getFit(1, c2, 2);
Y025Fit2 = getFit(2.5, c2, 2);
Y05Fit2 = getFit(5, c2, 2);
Y07Fit2 = getFit(7, c2, 2);
Y10Fit2 = getFit(10, c2, 2);

Y001Fit3 = getFit(0.1, c3, 3);
Y01Fit3 = getFit(1, c3, 3);
Y025Fit3 = getFit(2.5, c3, 3);
Y05Fit3 = getFit(5, c3, 3);
Y07Fit3 = getFit(7, c3, 3);
Y10Fit3 = getFit(10, c3, 3);

Y001Fit4 = getFit(0.1, c4, 4);
Y01Fit4 = getFit(1, c4, 4);
Y025Fit4 = getFit(2.5, c4, 4);
Y05Fit4 = getFit(5, c4, 4);
Y07Fit4 = getFit(7, c4, 4);
Y10Fit4 = getFit(10, c4, 4);


%%%%%%%%%% Segundo grau
X2 = 1:1:101;
maxIter = 101;
plot(X2(1:maxIter), Y01Fit2(1:maxIter), 'color','black'); hold on;
plot(X2(1:maxIter), Y025Fit2(1:maxIter), 'color','r'); hold on;
plot(X2(1:maxIter), Y07(1:maxIter), 'color','b');
plot(X2(1:maxIter), Y05Fit2(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 1 (Fit)', 'circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)', 'circulo de raio 7 (luximetro)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

X2 = 1:1:101;
maxIter = 101;
plot(X2(1:maxIter), Y001Fit2(1:maxIter), 'color','b'); hold on;
plot(X2(1:maxIter), Y01Fit2(1:maxIter), 'color','black');
plot(X2(1:maxIter), Y025Fit2(1:maxIter), 'color','r');
plot(X2(1:maxIter), Y05Fit2(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 0.1 - aproximadamente 1pixel (Fit)', 'circulo de raio 1 (Fit)', 'circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

%%%%%%%%%% Terceiro grau
X2 = 1:1:101;
maxIter = 101;
plot(X2(1:maxIter), Y01Fit3(1:maxIter), 'color','black'); hold on;
plot(X2(1:maxIter), Y025Fit3(1:maxIter), 'color','r'); hold on;
plot(X2(1:maxIter), Y07(1:maxIter), 'color','b');
plot(X2(1:maxIter), Y05Fit3(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 1 (Fit)', 'circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)', 'circulo de raio 7 (luximetro)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

X2 = 1:1:101;
maxIter = 101;
plot(X2(1:maxIter), Y001Fit3(1:maxIter), 'color','b'); hold on;
plot(X2(1:maxIter), Y01Fit3(1:maxIter), 'color','black');
plot(X2(1:maxIter), Y025Fit3(1:maxIter), 'color','r');
plot(X2(1:maxIter), Y05Fit3(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 0.1 - aproximadamente 1pixel (Fit)', 'circulo de raio 1 (Fit)', 'circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

%%%%%%%%%% Quarto grau
X2 = 1:1:101;
maxIter = 101;
plot(X2(1:maxIter), Y01Fit4(1:maxIter), 'color','black'); hold on;
plot(X2(1:maxIter), Y025Fit4(1:maxIter), 'color','r'); hold on;
plot(X2(1:maxIter), Y07(1:maxIter), 'color','b');
plot(X2(1:maxIter), Y05Fit4(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 1 (Fit)', 'circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)', 'circulo de raio 7 (luximetro)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

X2 = 1:1:101;
maxIter = 101;
plot(X2(1:maxIter), Y001Fit4(1:maxIter), 'color','b'); hold on;
plot(X2(1:maxIter), Y01Fit4(1:maxIter), 'color','black');
plot(X2(1:maxIter), Y025Fit4(1:maxIter), 'color','r');
plot(X2(1:maxIter), Y05Fit4(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 0.1 - aproximadamente 1pixel (Fit)', 'circulo de raio 1 (Fit)', 'circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

%%plot test - falar que 
XFit = [0.1 1:30];
nXFit = size(XFit);
nX2 = size(X2);
for i=1 : nXFit(2)
   YFit(i, :) = getFit(XFit(i), c2, 2); 
end
Y001Fit2 = getFit(0.1, c2, 2);
Y07Fit2 = getFit(7, c2, 2);
Y10Fit2 = getFit(10.5, c2, 2);
Y15Fit2 = getFit(15, c2, 2);
Y20Fit2 = getFit(20, c2, 2);
Y25Fit2 = getFit(25, c2, 2);
Y30Fit2 = getFit(30, c2, 2);
T1 = [0.0 0.1 7 10 15 20 25 30];
T2 = [0.0 7 10 15 20 25 30];
index = 2;
plot(XFit, YFit(:, index), 'color','b'); hold on;
plot(T2, V(index, 1:7), 'color','r'); 
%title(['Fit pra estimar intensidades de um circulo de raios próximos de 0 - intensidade do smartphone 0.1'])
title(['Fit pra estimar intensidades de um circulo de raios próximos de 0 - intensidade do smartphone' num2cell(double((index/100)-0.01))])
legend('com a aproximação de 1 pixel', 'valores aproximados para intensidades não lidas (raio 7-30mm)');
xlabel('raio do círculo')
ylabel('intensidade lux')

index = 51;
plot(T1, [0.0 Y001Fit2(index) Y07Fit2(index) Y10Fit2(index) Y15Fit2(index) Y20Fit2(index) Y25Fit2(index) Y30Fit2(index)], 'color','b'); hold on;
plot(T2, V(index, 1:7), 'color','r');
title(['Fit para estimar intensidades de um circulo de raios próximos de 0 - intensidade do smarrphone' num2cell((index/100)-0.01)])
legend('com a aproximação de 1 pixel', 'valores medidos do luximetro 7-30');
xlabel('raio do círculo lux')
ylabel('intensidade lux')

index = 11;
plot(T1, [0.0 Y001Fit2(index) Y07Fit2(index) Y10Fit2(index) Y15Fit2(index) Y20Fit2(index) Y25Fit2(index) Y30Fit2(index)], 'color','b'); hold on;
plot(T2, V(index, 1:7), 'color','r');
title(['Fit para estimar intensidades de um circulo de raios próximos de 0 - intensidade do smarrphone' num2cell((index/100)-0.01)])
legend('com a aproximação de 1 pixel', 'valores medidos do luximetro 7-30');
xlabel('raio do círculo lux')
ylabel('intensidade lux')

index = 1;
plot(T1, [0.0 Y001Fit2(index) Y07Fit2(index) Y10Fit2(index) Y15Fit2(index) Y20Fit2(index) Y25Fit2(index) Y30Fit2(index)], 'color','b'); hold on;
plot(T2, V(index, 1:7), 'color','r');
title(['Fit para estimar intensidades de um circulo de raios próximos de 0 - intensidade do smarrphone' num2cell((index/100)-0.01)])
legend('com a aproximação de 1 pixel', 'valores medidos do luximetro 7-30');
xlabel('raio do círculo lux')
ylabel('intensidade lux')





