function [index] = getFittedValues(Y) 
    k = 1;
    i = 1;
    sizeY = size(Y);
    sizeY = max(sizeY(1), sizeY(2));
    for j=3:sizeY
        if Y(j-1) >= Y(j)
          k = j;  
        end
        if Y(j-1) <= 0
          i = j;
        end
    end

    index = max(i,k);
end