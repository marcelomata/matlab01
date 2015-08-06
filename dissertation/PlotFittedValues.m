[YL, YLFitted, ILFitted, AsbLFitted, Fit1pxlByIntensity] = getFitFixedBySizesAndByIntensities();
YLTFitted = getTranslatedValuesByIntensity(YLFitted);

YLNormalFitted = ones(31, 101);
YLNormalFitted(1, :) = YL(1,:);
degree = 2;
for i=2:4
    YLNormalFitted(i,:) = getFittingByIndex(YL(i,:), [85 95 101], degree);
end
degree = 4;
for i=5:31
    YLNormalFitted(i,:) = getNormalFittingRefined(YL(i,:), degree);
end
YLTNormalFitted = getTranslatedValuesByIntensity(YLNormalFitted');
YLTNormalFitted = YLTNormalFitted';

YL30Refined = getNormalFittingRefined(YL(31,:), degree);
YL20Refined = getNormalFittingRefined(YL(21,:), degree);
plot(YLTNormalFitted(:, 2))
plot(YLNormalFitted(2,:))

MPDistances = [0:0.001:0.03];
MO = ones(1,31).*0.08;
OP = sqrt(MO.*MO + MPDistances.*MPDistances);
a = (MPDistances.*MO)/OP;
MO_h = sqrt(MO.*MO - a.*a);
h = (MO.*(1-(a./MPDistances)));
PI = ones(1,31).*3.1415926;
A = (PI.*h.*MO).*2;
omega = A./(MO.*MO);




plot(ILFitted(:, 1:1:4))
legend('intensidade do dispositivo de 0.00', 'intensidade do dispositivo de 0.01', 'intensidade do dispositivo de 0.02', 'intensidade do dispositivo de 0.03');

plot(ILFitted(:, 5:1:8))
legend('intensidade do dispositivo de 0.04', 'intensidade do dispositivo de 0.05', 'intensidade do dispositivo de 0.06', 'intensidade do dispositivo de 0.07');

plot(ILFitted(:, 9:1:12))
legend('intensidade do dispositivo de 0.08', 'intensidade do dispositivo de 0.09', 'intensidade do dispositivo de 0.10', 'intensidade do dispositivo de 0.11');

plot(ILFitted(:, 13:1:16))
legend('intensidade do dispositivo de 0.12', 'intensidade do dispositivo de 0.13', 'intensidade do dispositivo de 0.14', 'intensidade do dispositivo de 0.15');

plot(ILFitted(:, 17:1:20))
legend('intensidade do dispositivo de 0.16', 'intensidade do dispositivo de 0.17', 'intensidade do dispositivo de 0.18', 'intensidade do dispositivo de 0.19');

plot(ILFitted(:, 21:1:24))
legend('intensidade do dispositivo de 0.20', 'intensidade do dispositivo de 0.21', 'intensidade do dispositivo de 0.22', 'intensidade do dispositivo de 0.23');

plot(ILFitted(:, 25:1:28))
legend('intensidade do dispositivo de 0.24', 'intensidade do dispositivo de 0.25', 'intensidade do dispositivo de 0.26', 'intensidade do dispositivo de 0.27');

plot(ILFitted(:, 29:1:32))
legend('intensidade do dispositivo de 0.28', 'intensidade do dispositivo de 0.29', 'intensidade do dispositivo de 0.30', 'intensidade do dispositivo de 0.31');

plot(ILFitted(:, 33:1:36))
legend('intensidade do dispositivo de 0.32', 'intensidade do dispositivo de 0.33', 'intensidade do dispositivo de 0.34', 'intensidade do dispositivo de 0.35');

plot(ILFitted(:, 37:1:40))
legend('intensidade do dispositivo de 0.36', 'intensidade do dispositivo de 0.37', 'intensidade do dispositivo de 0.38', 'intensidade do dispositivo de 0.39');

plot(ILFitted(:, 41:1:44))
legend('intensidade do dispositivo de 0.40', 'intensidade do dispositivo de 0.41', 'intensidade do dispositivo de 0.42', 'intensidade do dispositivo de 0.43');

plot(ILFitted(:, 45:1:48))
legend('intensidade do dispositivo de 0.44', 'intensidade do dispositivo de 0.45', 'intensidade do dispositivo de 0.46', 'intensidade do dispositivo de 0.47');

plot(ILFitted(:, 49:1:52))
legend('intensidade do dispositivo de 0.48', 'intensidade do dispositivo de 0.49', 'intensidade do dispositivo de 0.50', 'intensidade do dispositivo de 0.51');

plot(ILFitted(:, 53:1:56))
legend('intensidade do dispositivo de 0.52', 'intensidade do dispositivo de 0.53', 'intensidade do dispositivo de 0.54', 'intensidade do dispositivo de 0.55');

plot(ILFitted(:, 57:1:60))
legend('intensidade do dispositivo de 0.56', 'intensidade do dispositivo de 0.57', 'intensidade do dispositivo de 0.58', 'intensidade do dispositivo de 0.59');

plot(ILFitted(:, 61:1:64))
legend('intensidade do dispositivo de 0.60', 'intensidade do dispositivo de 0.61', 'intensidade do dispositivo de 0.62', 'intensidade do dispositivo de 0.63');

plot(ILFitted(:, 65:1:68))
legend('intensidade do dispositivo de 0.64', 'intensidade do dispositivo de 0.65', 'intensidade do dispositivo de 0.66', 'intensidade do dispositivo de 0.67');

plot(ILFitted(:, 69:1:72))
legend('intensidade do dispositivo de 0.68', 'intensidade do dispositivo de 0.69', 'intensidade do dispositivo de 0.70', 'intensidade do dispositivo de 0.71');

plot(ILFitted(:, 73:1:76))
legend('intensidade do dispositivo de 0.72', 'intensidade do dispositivo de 0.73', 'intensidade do dispositivo de 0.74', 'intensidade do dispositivo de 0.75');

plot(ILFitted(:, 77:1:80))
legend('intensidade do dispositivo de 0.76', 'intensidade do dispositivo de 0.77', 'intensidade do dispositivo de 0.78', 'intensidade do dispositivo de 0.79');

plot(ILFitted(:, 81:1:84))
legend('intensidade do dispositivo de 0.80', 'intensidade do dispositivo de 0.81', 'intensidade do dispositivo de 0.82', 'intensidade do dispositivo de 0.83');

plot(ILFitted(:, 85:1:88))
legend('intensidade do dispositivo de 0.84', 'intensidade do dispositivo de 0.85', 'intensidade do dispositivo de 0.86', 'intensidade do dispositivo de 0.87');

plot(ILFitted(:, 89:1:92))
legend('intensidade do dispositivo de 0.88', 'intensidade do dispositivo de 0.89', 'intensidade do dispositivo de 0.90', 'intensidade do dispositivo de 0.91');

plot(ILFitted(:, 93:1:96))
legend('intensidade do dispositivo de 0.92', 'intensidade do dispositivo de 0.93', 'intensidade do dispositivo de 0.94', 'intensidade do dispositivo de 0.95');

plot(ILFitted(:, 97:1:100))
legend('intensidade do dispositivo de 0.96', 'intensidade do dispositivo de 0.97', 'intensidade do dispositivo de 0.98', 'intensidade do dispositivo de 0.99');

format long
Fit1pxlByIntensity(:)

plot(Fit1pxlBySize, 'r');hold on;
plot(Fit1pxlByIntensity,'b');

plot(Test(1:1:30), 'r');hold on;
plot(ILFitted(1:1:30,101),'b');

index = 6;
plot(YLTFitted(:,index), 'r'); hold on;
plot(YLFitted(:,index), 'b');

plot(YLFitted(6,:));

plot(AsbLFitted(101,2:1:31));
title('Intensidade 1(smartphone) em dB')
%legend('fitting', 'intensidades medidas');
xlabel('raio em mm')
ylabel('intensidade em dB (luximetro)')

plot(YLFitted(:,7));
title('Fitting - raio 6mm')
%legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone *100')
ylabel('intensidade em lux')