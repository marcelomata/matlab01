function [ coef ] = getCoef(Y, X, degree ) 
    n = size(Y);

    for i = 1:n(1)
      X1(i, :) = X(:);
    end
    
    switch degree
      case 2
        coef = zeros(n(1), 3);
      case 3
        coef = zeros(n(1), 4);
      case 4
        coef = zeros(n(1), 5);
      case 5
        coef = zeros(n(1), 6);
      case 6
        coef = zeros(n(1), 7);
      case 7
        coef = zeros(n(1), 8);
        otherwise
          coef = zeros(n(1), 2);
    end
    
    for i = 1:n(1)
      X2 = X1(i,:);
      Y1 = Y(i,:);
      coef(i, :) = polyfit(X2,Y1, degree);
      %getFit(0.0, coef(i, :), degree)
    end

end

