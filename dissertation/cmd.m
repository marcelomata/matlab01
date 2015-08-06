%get 1pxl intensities
degree = 5;
Z = zeros(1,101);
X1 = ones(1, 101);
X2 = X1(:)*[0 6 7 30];
X1 = X1(:)*[0:1:30];
Y2 = [Z(:) ILFitted(7, :)' ILFitted(8, :)' ILFitted(31, :)'];
Y1 = [ILFitted(:, :)'];
Fit1pxlBySize1 = getFittedBySize(Y1(1:1:101, :) , X1(1,:), degree, 0.1);
Fit1pxlBySize2 = getFittedBySize(Y2(1:1:101, :) , X2(1,:), degree, 0.1);
XY = 1:1:101;
%getFittedIntensities(Fit1pxlBySize, degree)
Fit1pxlByIntensity1 = getFittedValues(Fit1pxlBySize1, XY, XY, degree);
Fit1pxlByIntensity2 = getFittedValues(Fit1pxlBySize2, XY, XY, degree);
plot(Fit1pxlByIntensity2, 'b'); hold on; 
plot(Fit1pxlBySize2, 'black');

plot(Fit1pxlByIntensity1, 'r'); hold on;
%plot(getFittedIntensities(Fit1pxlBySize, degree), 'b');
plot(Fit1pxlBySize1, 'black');

plot(Fit1pxlByIntensity1, 'r'); hold on;
plot(Fit1pxlBySize1, 'black');

plot(Fit1pxlByIntensity2, 'b'); hold on; 
plot(Fit1pxlBySize2, 'black');
title('Fitting - 1 pixel')
%legend('Fitting' , 'intensidades medidas');
xlabel('intensidade smartphone *100')
ylabel('intensidade em lux')


Fit1pxlBySize10_1 = getFittedBySize(Y1(:, :) , X1(1,:)', degree, 10);
Fit1pxlBySize10_2 = getFittedBySize(Y2(1:1:101, :) , X2(1,:), degree, 10);
Fit1pxlBySize5_1 = getFittedBySize(Y1(:, :) , X1(1,:)', degree, 5);
Fit1pxlBySize5_2 = getFittedBySize(Y2(1:1:101, :) , X2(1,:), degree, 5);
IL10 = YL(11, :);
IL5 = YL(6, :);

plot(Fit1pxlBySize10_2, 'r'); hold on;
plot(IL10, 'black');
title('Intensidade 10mm - Fitting por intensidade (variando o tamanho)')
legend('Fitting com somente 3 valores', 'Valores medidos pelo luximetro');
xlabel('intensidade dispositivo')
ylabel('intensidade em lux')

plot(Fit1pxlBySize10_1, 'r'); hold on;
plot(IL10, 'black');
title('Intensidade 10mm - Fitting por intensidade (variando o tamanho)')
legend('Fitting utilizando todas as intensidades', 'Valores medidos pelo luximetro');
xlabel('intensidade dispositivo')
ylabel('intensidade em lux')

%%%%%%%0.1
plot(Fit1pxlBySize2, 'r'); hold on;
title('Intensidade 1 pixel - Fitting por intensidade (variando o tamanho)')
legend('Fitting com somente 3 valores');
xlabel('intensidade dispositivo')
ylabel('intensidade em lux')

plot(Fit1pxlBySize1, 'r'); hold on;
title('Intensidade 1 pixel - Fitting por intensidade (variando o tamanho)')
legend('Fitting utilizando todas as intensidades');
xlabel('intensidade dispositivo')
ylabel('intensidade em lux')


plot(Fit1pxlBySize10_2, 'r'); hold on;
plot(IL10, 'black');

plot(Fit1pxlBySize5, 'r'); hold on;
plot(IL5, 'black');

Asb101 = [1920.224997	1696.794959	1672.873405	1643.07436	1627.793455	1606.746845	1597.359101	1584.787718	1572.897956	1586.351259	1550.236211	1541.083134	1552.45138	1539.79421	1532.594961	1524.254888	1508.62026	1494.45	1485.398243	1471.991969	1455.642516	1444.351651	1432.031934	1414.388093	1418.057312	1388.720652	1373.131391	1354.609432	1305.460461	1266.671246];
plot(Asb101);
title('Intensidade 1(smartphone) em dB')
%legend('fitting', 'intensidades medidas');
xlabel('raio em mm')
ylabel('intensidade em dB (luximetro)')

Fit1pxlByIntensity(:)

plotFitFewPointsMixAllPoints(YL, YLFitted, 30, 4);
title('Mix fitting com poucos valores para menores intensidades e os valores medidos pelo luximetro (raio 30mm)')

YLNormalFittedBySize = ones(101, 31);
YLTNormalFittedT = YLTNormalFitted';
YLNormalFittedBySize(1, :) = YLTNormalFittedT(1,:);
YLNormalFittedBySize(:, 1) = YLTNormalFittedT(:,1);
degree = 2;
for i=2:20
    YLNormalFittedBySize(i,:) = getFittingByIndex(YLTNormalFittedT(i,:), [ 31], degree);
end
degree = 3;
for i=2:101
    YLNormalFittedBySize(i,:) = getNormalFitting(YLTNormalFittedT(i,:), degree);
end
YLNormalFittedBySize = getTranslatedValuesBySize(YLNormalFittedBySize);

Test = getTranslatedValuesBySize(YLNormalFittedBySize);

plot(YLNormalFittedBySize(2,:), 'r'); hold on;
plot(YLNormalFittedBySize(12,:), 'b');
plot(YLNormalFittedBySize(30,:), 'black');
plot(YLNormalFittedBySize(50,:), 'y');
plot(YLNormalFittedBySize(101,:), 'g');

plot(Test(2,:), 'r'); hold on;
plot(Test(12,:), 'b');
plot(Test(30,:), 'black');
plot(Test(50,:), 'y');
plot(Test(101,:), 'g');

X1 = ones(1, 101);
X1 = X1(:)*[0:1:30];
Y1 = [YLNormalFittedBySize(:, :)];
Fit1pxlBySize1 = getFittedBySizeTranslated(Y1(1:1:101, :) , X1(1,:), degree, 0.1);


plot(getFittingByIndex(YLTNormalFittedT(2,:), [ 31], degree));


plot(getFit(2, coef(2, :), degree))