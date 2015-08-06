function [YFitted] = getFittedIntensities(Y, degree)%, keepZeros, translate)  não por enquanto
%fitting feito utilizando somente os nValues primeiros valores de Y

YFitted = Y;
sizeY = size(Y);
nValues = sizeY(2);
%n = getIndex(Y);
n = 14;

i = n;
init = -1;
keep = 1;
while i>1 && keep
    Y = [ Y(n:1:nValues)];
    Y = [0 Y];
    m = nValues-1;
    XYFitted = 0:1:m;
    XY = n:1:nValues;
    XY = [0 XY];

    YFitted = getFittedValues(Y, XY, XYFitted, degree);
    
    sizeY = size(Y);
    i = n-1;
    Y = [YFitted(1:1:i) Y(2:1:sizeY(2))];
    n = getIndex(Y);
    i = n;
    keep = init ~= n;
    YFitted = Y;
    %if ~keep && i>2
    %    YFitted = refinement(Y, degree);
    %end
    init = n;
end





