Fd1 = inline('a*x+b', 'x', 'a', 'b');
Fd2 = inline('a*x.^2+b*x+c', 'x', 'a', 'b', 'c');
Fd3 = inline('a*x.^3+b*x.^2+c*x+d', 'x', 'a', 'b', 'c', 'd');
Fd4 = inline('a*x.^4+b*x.^3+c*x.^2+d*x+e', 'x', 'a', 'b', 'c', 'd', 'e');
Fd5 = inline('a*x.^5+b*x.^4+c*x.^3+d*x.^2+e*x+f', 'x', 'a', 'b', 'c', 'd', 'e', 'f');

Y00 = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0];
Y07 = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.11 0.11 0.15 0.19 0.19 0.22 0.22 0.26 0.26 0.3 0.34 0.38 0.41 0.45 0.49 0.53 0.57 0.6 0.64 0.72 0.76 0.83 0.91 0.98 1.02 1.1 1.14 1.21 1.25 1.33 1.4 1.44 1.52 1.59 1.67 1.74 1.86 1.9 2.01 2.09 2.2 2.28 2.39 2.5 2.58 2.69 2.81 2.92 3.04 3.19 3.34 3.42 3.57 3.68 3.83 3.95 4.1 4.21 4.4 4.52 4.67 4.86 4.97 5.16 5.28 5.51 5.62 5.81 5.92 6.15 6.27 6.49 6.72 6.87 7.06 7.22 7.48 7.63 7.86 8.05 8.28 8.55 8.7 8.93 9.12 9.38 9.53 9.76 9.95 10.18];
Y10 = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.11 0.19 0.22 0.26 0.3 0.38 0.41 0.45 0.49 0.57 0.64 0.72 0.79 0.83 0.95 0.98 1.1 1.17 1.29 1.4 1.52 1.67 1.78 1.93 2.05 2.16 2.24 2.39 2.47 2.62 2.77 2.92 3.07 3.19 3.38 3.49 3.68 3.8 4.02 4.14 4.4 4.52 4.78 5.05 5.2 5.43 5.58 5.89 6.08 6.38 6.65 6.84 7.18 7.41 7.67 7.9 8.24 8.47 8.77 9.04 9.38 9.72 9.95 10.33 10.56 10.98 11.21 11.59 11.85 12.27 12.54 12.95 13.41 13.68 14.13 14.44 14.89 15.2 15.65 16.03 16.49 16.98 17.36 17.82 18.16 18.69 19.03 19.49 19.87 20.6];
Y15 = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.11 0.15 0.22 0.38 0.45 0.57 0.64 0.76 0.83 0.95 1.06 1.21 1.36 1.48 1.67 1.78 1.97 2.16 2.39 2.54 2.77 2.96 3.26 3.57 3.83 4.18 4.33 4.59 4.82 5.13 5.32 5.66 6.0 6.19 6.53 6.8 7.18 7.48 7.86 8.17 8.58 8.89 9.38 9.65 10.18 10.75 11.05 11.55 11.93 12.54 12.92 13.56 14.17 14.59 15.27 15.69 16.34 16.83 17.55 17.97 18.69 19.15 19.91 21.0 21.5 22.4 22.9 23.7 24.3 25.1 25.6 26.5 27.1 28.0 28.9 29.6 30.6 31.2 32.2 32.9 33.9 34.7 35.7 36.7 37.6 38.7 39.5 40.6 41.3 42.4 43.2 44.1];
Y20 = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.19 0.22 0.38 0.6 0.79 0.95 1.06 1.29 1.4 1.63 1.78 2.01 2.28 2.5 2.81 3.04 3.34 3.61 3.99 4.25 4.67 5.05 5.51 6.08 6.42 7.03 7.29 7.79 8.09 8.58 8.93 9.5 10.07 10.48 11.09 11.43 12.12 12.57 13.26 13.71 14.44 14.97 15.8 16.22 17.13 17.97 18.62 19.41 20.4 21.4 22.1 23.1 24.3 24.9 26.1 26.9 28.1 28.9 30.1 30.9 32.0 32.8 34.1 35.3 36.3 37.6 38.4 39.9 40.8 42.1 43.1 44.6 45.6 47.0 48.6 49.7 51.3 52.3 54.0 55.2 56.8 58.2 59.9 61.8 63.0 64.7 66.0 67.9 69.1 71.0 72.3 73.8];
Y25 = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.11 0.26 0.3 0.57 0.87 1.14 1.4 1.55 1.9 2.05 2.35 2.66 3.0 3.38 3.68 4.14 4.48 4.94 5.32 5.89 6.3 6.91 7.41 8.13 8.96 9.53 10.33 10.83 11.51 11.97 12.65 13.11 13.98 14.82 15.31 16.26 16.87 17.82 18.43 19.41 20.4 21.5 22.2 23.5 24.2 25.5 26.9 27.7 28.9 29.9 31.3 32.4 33.9 35.5 36.5 38.2 39.3 41.0 42.1 44.0 45.1 46.8 48.0 49.7 51.6 52.8 54.9 55.9 58.0 59.3 61.3 62.7 64.9 66.3 68.5 70.8 72.2 74.6 76.2 78.5 80.2 82.7 84.7 87.2 89.7 91.6 94.2 95.8 98.3 100.3 103.0 104.7 106.9];
Y30 = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.11 0.3 0.41 0.72 1.17 1.52 1.86 2.09 2.54 2.77 3.19 3.57 3.99 4.52 5.01 5.58 6.04 6.68 7.18 7.9 8.43 9.27 9.91 10.94 11.97 12.76 13.9 14.44 15.42 16.07 17.02 17.63 18.73 19.83 21.0 22.2 23.0 24.3 25.2 26.6 27.5 29.0 29.8 31.6 32.5 34.2 36.0 37.2 38.8 40.0 42.0 43.4 45.3 47.5 48.9 51.0 52.5 54.9 56.4 58.6 60.1 62.5 64.0 66.3 68.9 70.5 73.3 74.5 77.3 79.2 81.7 83.6 86.5 88.3 91.0 94.0 95.8 98.8 100.7 104.0 106.1 108.4 110.6 113.0 115.0 117.3 120.6 121.9 125.0 127.4 129.7 132.0 134.7];
Y15OnScreen = [0.0 0.11 0.11 0.11 0.11 0.11 0.11 0.19 0.41 1.36 1.82 3.23 5.39 7.1 8.58 9.53 11.32 12.27 14.06 15.46 17.44 19.57 21.9 24.4 26.5 29.2 31.6 35.1 37.5 40.8 44.2 48.6 53.5 56.9 62.3 65.1 69.4 72.1 76.4 79.6 84.5 89.8 93.4 98.7 102.4 108.2 112.4 118.6 122.8 129.1 133.8 141.3 145.9 154.0 161.8 167.6 175.1 180.8 189.4 196.8 206.0 215.0 221.0 232.0 238.0 249.0 256.0 267.0 273.0 283.0 289.0 302.0 313.0 321.0 334.0 341.0 354.0 362.0 373.0 383.0 397.0 406.0 419.0 433.0 442.0 456.0 466.0 481.0 491.0 507.0 519.0 534.0 552.0 563.0 580.0 590.0 608.0 619.0 637.0 649.0 662.0];

n = size(Y07);
V = [Y00(:), Y07(:), Y10(:), Y15(:), Y20(:), Y25(:), Y30(:)];

YOldFill = Y15;
YOld = Y15;
YOld = YOld(1:1:101);
X1 = 1:1:101;
X2 = 1:1:101;
c2 = polyfit(X2,YOld, 2);
c3 = polyfit(X2,YOld, 3);
c4 = polyfit(X2,YOld, 4);
c5 = polyfit(X2,YOld, 5);
cE = polyfit(X2, log(YOld), 1);
YfittedE = exp(Fd1(X1, cE(:, 1), cE(:, 2)));
Yfitted2 = Fd2(X1, c2(:, 1), c2(:, 2), c2(:, 3));
Yfitted3 = Fd3(X1, c3(:, 1), c3(:, 2), c3(:, 3), c3(:, 4));
Yfitted4 = Fd4(X1, c4(:, 1), c4(:, 2), c4(:, 3), c4(:, 4), c4(:, 5));
Yfitted5 = Fd5(X1, c5(:, 1), c5(:, 2), c5(:, 3), c5(:, 4), c5(:, 5), c5(:, 6));
c3Translated = c3;
c3Translated(4) = c3Translated(4) + Fd3(1, c3(:, 1), c3(:, 2), c3(:, 3), c3(:, 4));
Yfitted3Translated = Fd3(X1, c3Translated(:, 1), c3Translated(:, 2), c3Translated(:, 3), c3Translated(:, 4));
YfittedPos1 = (Yfitted3<0).*YfittedE + (Yfitted3>0).*Yfitted3;
YfittedPos2 = ((Yfitted3<YfittedE & YOldFill==0).*(YfittedE+Yfitted3)./2) + (Yfitted3>0).*Yfitted3;
c3 = polyfit(X1,YfittedPos2, 3);
YfittedPos2 = Fd3(X1, c3(:, 1), c3(:, 2), c3(:, 3), c3(:, 4));
maxIter = 101;
plot(X1(1:maxIter), Yfitted3(1:maxIter), 'color','r'); hold on;
plot(X1(1:maxIter), YOldFill(1:maxIter), 'color','b');
title('Fitting para estimar intensidades n�o medidas pelo luximetro - raio 10')
legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

plot(X2(1:maxIter), Yfitted3(1:maxIter), 'color','r'); hold on;
plot(1:1:maxIter, YOld(1:1:maxIter), 'color','b');
title('Fitting para estimar intensidades n�o medidas pelo luximetro - raio 10')
legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')

plot(X2(1:maxIter), Yfitted3Translated(1:maxIter), 'color','r'); hold on;
plot(1:1:maxIter, YOld(1:1:maxIter), 'color','b');
title('Fitting para estimar intensidades n�o medidas pelo luximetro - raio 10')
legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone')
ylabel('intensidade em lux')





