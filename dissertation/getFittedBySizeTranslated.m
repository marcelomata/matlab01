function [IFitted] = getFittedBySize(Y, X, degree, size)
    c = getCoef(Y, X, degree);
    
    %{
    translate = getFit(0, c, degree);
    translate = (translate<0).*translate.*-1 + (translate>=0).*0;
    IFitted = getFit(size, c, degree);
    IFitted = IFitted + translate;
    IFitted = getFittingByIndex(IFitted, [101], degree);
    %}
    IFitted = getFit(size, c, degree);
end





