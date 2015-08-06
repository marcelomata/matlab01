function [ YFitted ] = getFit( param, coef, degree )
      
    switch degree
      case 1
        Fd = inline('a*x+b', 'x', 'a', 'b');
        YFitted = Fd(param, coef(:, 1), coef(:, 2)); YFitted = YFitted';
      case 2
        Fd = inline('a*x.^2+b*x+c', 'x', 'a', 'b', 'c');
        YFitted = Fd(param, coef(:, 1), coef(:, 2), coef(:, 3)); YFitted = YFitted';
      case 3
        Fd = inline('a*x.^3+b*x.^2+c*x+d', 'x', 'a', 'b', 'c', 'd');
        YFitted = Fd(param, coef(:, 1), coef(:, 2), coef(:, 3), coef(:, 4)); YFitted = YFitted';
      case 4
        Fd = inline('a*x.^4+b*x.^3+c*x.^2+d*x+e', 'x', 'a', 'b', 'c', 'd', 'e');
        YFitted = Fd(param, coef(:, 1), coef(:, 2), coef(:, 3), coef(:, 4), coef(:, 5)); YFitted = YFitted';
      case 5
        Fd = inline('a*x.^5+b*x.^4+c*x.^3+d*x.^2+e*x+f', 'x', 'a', 'b', 'c', 'd', 'e', 'f');
        YFitted = Fd(param, coef(:, 1), coef(:, 2), coef(:, 3), coef(:, 4), coef(:, 5), coef(:, 6)); YFitted = YFitted';
      case 6
        Fd = inline('a*x.^6+b*x.^5+c*x.^4+d*x.^3+e*x.^2+f*x+g', 'x', 'a', 'b', 'c', 'd', 'e', 'f', 'g');
        YFitted = Fd(param, coef(:, 1), coef(:, 2), coef(:, 3), coef(:, 4), coef(:, 5), coef(:, 6), coef(:, 7)); YFitted = YFitted';
      case 7
        Fd = inline('a*x.^8+b*x.^6+c*x.^5+d*x.^4+e*x.^3+f*x.^2+g*x+h', 'x', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h');
        YFitted = Fd(param, coef(:, 1), coef(:, 2), coef(:, 3), coef(:, 4), coef(:, 5), coef(:, 6), coef(:, 7), coef(:, 8)); YFitted = YFitted';
        otherwise
          Fd = inline('a*x+b', 'x', 'a', 'b');
          YFitted = Fd(param, coef(:, 1), coef(:, 2)); YFitted = YFitted';
    end
    
end

