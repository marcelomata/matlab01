maxIter = 101;
plot(X1(1:maxIter), Yfitted4(1:maxIter), 'color','r'); hold on;
plot(X1(1:maxIter), YOldFill(1:maxIter), 'color','b');
title('Fitting para estimar intensidades não medidas pelo luximetro - raio 10')
legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

plot(X2(1:maxIter), Yfitted3(1:maxIter), 'color','r'); hold on;
plot(1:1:maxIter, YOld(1:1:maxIter), 'color','b');
title('Fitting para estimar intensidades não medidas pelo luximetro - raio 10')
legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

plot(X2(1:maxIter), Yfitted3Translated(1:maxIter), 'color','r'); hold on;
plot(1:1:maxIter, YOld(1:1:maxIter), 'color','b');
title('Fitting para estimar intensidades não medidas pelo luximetro - raio 10')
legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')