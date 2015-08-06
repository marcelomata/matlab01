function [ YNormalFitted ] = getNormalFitting(Y, degree)
    
    sizeY = size(Y);
    nElements = max(sizeY(1), sizeY(2));
    n = getIndex(Y);
       
    Y = [0 Y(n:1:nElements)];
    X = [0 n:1:nElements];
    
    m = nElements-1;
    XFitted = 0:1:m;

    YNormalFitted = getFittedValues(Y, X, XFitted, degree);
    i = n-1;
    sizeY = size(Y);
    nElements = max(sizeY(1), sizeY(2));
    YNormalFitted = [YNormalFitted(1:1:i) Y(2:1:nElements)];
end

