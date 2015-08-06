[YL, YLFitted, ILFitted, AsbLFitted, Fit1pxlByIntensity] = getFitFixedBySizesAndByIntensities();
YLRatios = ones(29,101);
YLTemp = YL;
YLTemp = (YLTemp==0).*-1 + (YLTemp~=0).*YLTemp;
for i=1:30
    YLRatios(i, :) = (YLTemp(i+1,:)==0).*(YLTemp(i,:)==0).*0 + (YLTemp(i+1,:)~=0).*(YLTemp(i,:)~=0).*YLTemp(i+1,:)./YLTemp(i,:);
end
YLRatios = (YLRatios<=1).*0 + (YLRatios>1).*YLRatios;

degree = 4;
YLRatiosFittedBySize = ones(29,101);
for i=2:29
    index = find(YLRatios(i,:));
    YLRatiosFittedBySize(i, :) = getFittingByIndexNoZero(YLRatios(i,:), index, degree);
end
YLRatiosFittedBySize(1,:) = zeros(1, 101);
YLRatiosFittedBySize(2,:) = zeros(1, 101);
YLRatiosFittedBySize(3,:) = zeros(1, 101);
T = YLRatiosFittedBySize([4 9 14 19 24 29],1:1:101);
T2 = YLRatios([4 9 14 19 24 29],1:1:101);
plot(T'); hold on;
plot(T2');
title('Fitting (5º grau) para estimar as razões nos valores não medidos - Raios em mm (4, 9, 14, 19, 24, 29)')
%legend('fitting', 'intensidades medidas');
xlabel('intensidade smartphone *100')
ylabel('razões')

plot(YLRatiosFittedBySize(29,10:1:101))

i = 10;
plot(YLRatiosFittedBySize(i,:),'b'); hold on;
plot(YLRatios(i, :),'r');



degree = 1;
YLRatiosFittedByIntensity = ones(101,29);
index = 14:1:29;
for i=1:101
    YLRatiosFittedByIntensity(i, :) = getFittingByIndexNoZero(YLRatiosFittedBySize(:,i)', index, degree);
end
%YLRatiosFittedByIntensity(1,:) = zeros(1, 101);
%YLRatiosFittedByIntensity(2,:) = zeros(1, 101);
%YLRatiosFittedByIntensity(3,:) = zeros(1, 101);
T = YLRatiosFittedByIntensity(1:1:101, 1:1:29);
index = [20 50 100];
T2 = YLRatios(1:1:29,index(:));
plot(T(index(:),:)'); hold on;
plot(T2)
title('Fitting (1º grau) para estimar as razões nos valores não medidos - Intensidades *100 (20, 50, 100)')
%legend('fitting', 'intensidades medidas');
xlabel('raio')
ylabel('razões')

plot(getFittingByIndexNoZero(YLRatiosFittedBySize(:,30)', index, 2));hold on;
plot(YLRatiosFittedBySize(:,30)');


i = 20;
plot(YLRatiosFittedByIntensity(i,:),'b'); hold on;
plot(YLRatios(i, :),'r');


T = YLRatiosFittedByIntensity(20:1:101, 1:1:29);
plot(T');



i = 2;
index = find(YLRatios(i,:));
YLRatiosFitted(i, :) = getFittingByIndex(YLRatios(i,:), [index(:)], degree);

for i=2:29
    size(find(YLRatios(i,:)))
end



plot(YLRatios(:,101));


YL(i+1,1:1:10)./YL(i,1:1:10)

(YL(i+1,:)==0).*(YL(i,:)==0).*0 + (YL(i+1,:)~=0).*(YL(i,:)~=0).*YL(i+1,:).*YL(i,:)