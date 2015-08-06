function [ YFitted ] = getFittingByIndex( Y, index, degree )

    sizeY = size(Y);
    nElements = max(sizeY(1), sizeY(2));
       
    Y = [0 Y(index(:))];
    X = [0 index(:)'];
    
    m = nElements-1;
    XFitted = 0:1:m;

    YFitted = getFittedValues(Y, X, XFitted, degree);
    %{
    i = n-1;
    sizeY = size(Y);
    nElements = max(sizeY(1), sizeY(2));
    YFitted = [YNormalFitted(1:1:i) Y(2:1:nElements)];
    %}
end

