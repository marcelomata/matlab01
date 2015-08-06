intensities = load('intensities.mat');
intensitiesWithLens = load('intensities_with_lens.mat');
Y00 = getFittedIntensities(intensities.Y00, 3);
Y07 = getFittedIntensities(intensities.Y07, 3);
Y10 = getFittedIntensities(intensities.Y10, 3);
Y15 = getFittedIntensities(intensities.Y15, 3);
Y20 = getFittedIntensities(intensities.Y20, 3);
Y25 = getFittedIntensities(intensities.Y25, 3);
Y30 = getFittedIntensities(intensities.Y30, 3);

Y00L = getFittedIntensities(intensities.Y00, 3);
Y07L = getFittedIntensities(intensitiesWithLens.Y07, 3);
Y10L3 = getFittedIntensities(intensitiesWithLens.Y10, 3);
Y10L4 = getFittedIntensities(intensitiesWithLens.Y10, 4);
Y10L5 = getFittedIntensities(intensitiesWithLens.Y10, 5);
Y10L6 = getFittedIntensities(intensitiesWithLens.Y10, 6);
Y15L = getFittedIntensities(intensitiesWithLens.Y15, 3);
Y20L = getFittedIntensities(intensitiesWithLens.Y20, 3);
Y25L = getFittedIntensities(intensitiesWithLens.Y25, 3);
Y30L = getFittedIntensities(intensitiesWithLens.Y30, 3);

Y = intensitiesWithLens.Y10;

Y = Y(12:1:100);
Y = [0 Y];
X1 = 0:1:100;
X2 = 12:1:100;
X2 = [0 X2];


X2 = 1:1:101;


maxIter = 101;
plot(X2(1:maxIter), intensitiesWithLens.Y10(1:maxIter), 'color','black'); hold on;
plot(X2(1:maxIter), Y10L(1:maxIter), 'color','r');

title('Fit das intensidades')
legend('Sem lente', 'Com lente');
xlabel('intensidade smartphone *100')
ylabel('intensidade em lux')



%%%%%%%%%%%%%%%%%%%%%%%%
n = size(Y07);
V = [Y00(:), Y07(:), Y10(:), Y15(:), Y20(:), Y25(:), Y30(:)];
VL = [Y00L(:), Y07L(:), Y10L(:), Y15L(:), Y20L(:), Y25L(:), Y30L(:)];
T1 = [0 7 10 15 20 25 30];

c2 = getCoef(V, T1, 2);
c3 = getCoef(V, T1, 3);
c4 = getCoef(V, T1, 4);
c5 = getCoef(V, T1, 5);
c6 = getCoef(V, T1, 6);

c2L = getCoef(VL, T1, 2);
c3L = getCoef(VL, T1, 3);
c4L = getCoef(VL, T1, 4);
c5L = getCoef(VL, T1, 5);
c6L = getCoef(VL, T1, 6);

Y001Fit2 = getFit(0.1, c2, 2);
Y01Fit2 = getFit(1, c2, 2);
Y025Fit2 = getFit(2.5, c2, 2);
Y05Fit2 = getFit(5, c2, 2);
Y07Fit2 = getFit(7, c2, 2);
Y10Fit2 = getFit(10, c2, 2);

Y001Fit2L = getFit(0.1, c2L, 2);
Y01Fit2L = getFit(1, c2L, 2);
Y025Fit2L = getFit(2.5, c2L, 2);
Y05Fit2L = getFit(5, c2L, 2);
Y07Fit2L = getFit(7, c2L, 2);
Y10Fit2L = getFit(10, c2L, 2);

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
plot(X2(1:maxIter), Y025Fit2(1:maxIter), 'color','r'); hold on;
plot(X2(1:maxIter), Y07(1:maxIter), 'color','b');
plot(X2(1:maxIter), Y05Fit2(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)', 'circulo de raio 7 (luximetro)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

X2 = 1:1:101;
maxIter = 101;
plot(X2(1:maxIter), Y025Fit2L(1:maxIter), 'color','r'); hold on;
plot(X2(1:maxIter), Y07L(1:maxIter), 'color','b');
plot(X2(1:maxIter), Y05Fit2L(1:maxIter), 'color','y');
title('Fit para estimar intensidades de um circulo de raios próximos de 0')
legend('circulo de raio 2.5 (Fit)', 'circulo de raio 5 (Fit)', 'circulo de raio 7 (luximetro)');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')





