function [IFitted] = getFittedBySize(Y, X, degree, size)
    c = getCoef(Y, X, degree);
    IFitted = getFit(size, c, degree);
end





