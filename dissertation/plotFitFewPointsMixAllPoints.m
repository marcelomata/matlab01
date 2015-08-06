function [] = plotFitFewPointsMixAllPoints(YL, YLFitted, size, degree)
    s = size+1
    Y1 = YL(s,:);
    n = getIndex(Y1);
    Y1 = [Y1(n:1:101)];
    Y1 = [0 Y1];
    X1 = n:1:101;
    X1 = [0 X1];
    FitSizeAll = getFittedValues(Y1, X1, 0:1:100, degree);
    X2 = [0 8 100];
    %X2 = [0 97];
    Y2 = [0 0.15 161.3];
    %Y2 = [0 0.34];
    FitSize = getFittedValues(Y2, X2, 0:1:100, degree);
    plot(FitSize, 'r'); hold on;
    plot(FitSizeAll, 'black');
    plot(YLFitted(:,s), 'b');

    plot([FitSize(1:1:n) YL(s,n+1:1:101)], 'r');
end

