[YL, YLFitted, ILFitted, AsbLFitted, Fit1pxlByIntensity] = getFitFixedBySizesAndByIntensities();
YLTFitted = getTranslatedValuesByIntensity(YLFitted);
ILFitted = getTranslatedValuesBySize(ILFitted);

YLNormalFitted = ones(31, 101);
YLNormalFitted(1, :) = YL(1,:);
degree = 2;
for i=2:4
    YLNormalFitted(i,:) = getFittingByIndex(YL(i,:), [85 95 101], degree);
end
degree = 4;
for i=5:31
    YLNormalFitted(i,:) = getNormalFitting(YL(i,:), degree);
end
YLTNormalFitted = getTranslatedValuesByIntensity(YLNormalFitted');
YLTNormalFitted = YLTNormalFitted';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

YLNormalFittedBySize = ones(101, 31);
YLTNormalFittedT = YLTNormalFitted';
YLNormalFittedBySize(1, :) = YLTNormalFittedT(1,:);
YLNormalFittedBySize(:, 1) = YLTNormalFittedT(:,1);
%%{
degree = 3;
for i=2:101
    YLNormalFittedBySize(i,:) = getFittingByIndex(YLTNormalFittedT(i,:), [ 31], degree);
end
%%}
%{
degree = 3;
for i=21:101
    YLNormalFittedBySize(i,:) = getNormalFitting(YLTNormalFittedT(i,:), degree);
end
%}
YLNormalFittedBySize = getTranslatedValuesBySize(YLNormalFittedBySize);


X1 = ones(1, 101);
X1 = X1(:)*[0:1:30];
Y1 = [YLNormalFittedBySize(:, :)];
%Y1 = [YLTNormalFitted(:, :)'];
%Fit1pxlBySize1 = getFittedBySizeTranslated(Y1(1:1:101, :) , X1(1,:), degree, 0.1);
%Fit1pxlBySize1 = getFittedBySizeTranslated(Y1(101, :) , X1(1,:), degree, 0.1);
Fit1pxlBySize1 = zeros(101, 1);
%O problema aqui é que os coeficientes para cada curva podem dar valores
%muito diferentes do esperado na estimativa de 1 pixel
for i=2:101
    %Fit1pxlBySize1(i) = getFittedBySizeTranslated(Y1(i, :) , X1(1,:), degree, 0.1);
    Fit1pxlBySize1(i) = getFittedBySize(Y1(i, :) , X1(1,:), degree, 0.1);
end
plot(Fit1pxlBySize1(2:1:101))

getFittedBySizeTranslated(Y1(1:1:101, 25:1:31) , X1(1,25:1:31), degree, 0.1)
getFittedBySizeTranslated(Y1(101, :) , X1(1,:), degree, 0.1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FitBySizeAll = zeros(32, 1);
FitBySizeAll(2) = getFittedBySize(Y1(101, :) , X1(101,:), degree, 0.1);
for i=2:31
    FitBySizeAll(i+1) = getFittedBySize(Y1(101, :) , X1(101,:), degree, i);
end
XAll = [0 0.1 2:1:31];
plot(XAll, FitBySizeAll)

degree = 3;
V = [0:0.0001:0.0099 0.0035];
V(77) = 0.0020894;
V(17) = 0.0001211555;
V(52) = 0.000896759;

Fit1pxl = getFittingByIndex(V, [1 17 52 77 101], degree);
Fit1pxlT = getTranslatedValuesByIntensity(Fit1pxl');
plot(Fit1pxl, 'r');hold on;
%plot(YLTNormalFitted(10,:), 'b');
