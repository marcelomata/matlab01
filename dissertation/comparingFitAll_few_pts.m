X3 = [0 54 66 76 84 93 100];
%X3 = [0 97];
Y3 = [0 0.11 0.15 0.19 0.22 0.26 0.3];
%Y3 = [0 0.34];
Fit1mm = getFittedValues(Y3, X3, 0:1:100, 2);

X3 = [0 9 19 100];
%X3 = [0 97];
Y3 = [0 0.11 0.6 24.9];
%Y3 = [0 0.34];
Fit10mm = getFittedValues(Y3, X3, 0:1:100, 3);


Y2 = YL(31,:);
n = getIndex(Y2);
Y2 = [Y2(n:1:101)];
Y2 = [0 Y2];
X2 = n:1:101;
X2 = [0 X2];
Fit30mmAll = getFittedValues(Y2, X2, 0:1:100, 4);
X3 = [0 8 100];
%X3 = [0 97];
Y3 = [0 0.15 161.3];
%Y3 = [0 0.34];
Fit30mm = getFittedValues(Y3, X3, 0:1:100, 4);
plot(Fit30mm, 'r'); hold on;
plot(Fit30mmAll, 'black');
plot(YLFitted(:,11), 'b');
hold on;
plot(YLFitted(:,6), 'r');

plot([Fit30mm(1:1:n) YL(31,n+1:1:101)], 'r');
title('Mix fitting com poucos valores para menores intensidades e os valores medidos pelo luximetro (raio 30mm)')
