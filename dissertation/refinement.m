function [YFitted] = refinement(Y, degree)
    n = getIndex(Y);
    if n > 1
        nValues = n*2;
        I = Y(n:1:nValues);
        I = [0 I];
        X1 = 0:1:nValues;
        X2 = n:1:nValues;
        X2 = [0 X2];
        
        IFitted = getFittedValues(I, X2, X1, degree);
        YOld = Y;
        i = n-1;
        Y(1:1:i) = IFitted(1:1:i);
        
        indexY = getIndex(Y);
        indexYOld = getIndex(YOld);
        YFitted = Y;
        if indexY >= indexYOld
            YFitted = YOld;
        end 
    end
end