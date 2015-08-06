function [YFitted] = intensitiesFit(Y, degree)%, keepZeros, translate)  não por enquanto
%fitting feito atualizando os valores de Y menores ou igual a zero
%loop feito até que todos os valores sejam aproximados ou nenhum novo valor
%pode ser aproximado

Fd1 = inline('a*x+b', 'x', 'a', 'b');
Fd2 = inline('a*x.^2+b*x+c', 'x', 'a', 'b', 'c');
Fd3 = inline('a*x.^3+b*x.^2+c*x+d', 'x', 'a', 'b', 'c', 'd');
Fd4 = inline('a*x.^4+b*x.^3+c*x.^2+d*x+e', 'x', 'a', 'b', 'c', 'd', 'e');
Fd5 = inline('a*x.^5+b*x.^4+c*x.^3+d*x.^2+e*x+f', 'x', 'a', 'b', 'c', 'd', 'e', 'f');
Fd6 = inline('a*x.^6+b*x.^5+c*x.^4+d*x.^3+e*x.^2+f*x+g', 'x', 'a', 'b', 'c', 'd', 'e', 'f', 'g');
Fd7 = inline('a*x.^8+b*x.^6+c*x.^5+d*x.^4+e*x.^3+f*x.^2+g*x+h', 'x', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h');

sizeY = size(Y);
i = 2;
n = sum(Y==0)+1;
init = -1;
keep = 1;
while i>1 && keep
    Y = [ Y(n:1:sizeY(2))];
    Y = [0 Y];
    X1 = 0:1:101;
    X2 = n:1:sizeY(2);
    X2 = [0 X2];

    switch degree
      case 2
        c2 = polyfit(X2, Y, 2);
        YFitted = Fd2(X1, c2(:, 1), c2(:, 2), c2(:, 3));
      case 3
        c3 = polyfit(X2, Y, 3);
        YFitted = Fd3(X1, c3(:, 1), c3(:, 2), c3(:, 3), c3(:, 4));
      case 4
        c4 = polyfit(X2, Y, 4);
        YFitted = Fd4(X1, c4(:, 1), c4(:, 2), c4(:, 3), c4(:, 4), c4(:, 5));
      case 5
        c5 = polyfit(X2, Y, 5);
        YFitted = Fd5(X1, c5(:, 1), c5(:, 2), c5(:, 3), c5(:, 4), c5(:, 5), c5(:, 6));
      case 6
        c6 = polyfit(X2, Y, 6);
        YFitted = Fd6(X1, c6(:, 1), c6(:, 2), c6(:, 3), c6(:, 4), c6(:, 5), c6(:, 6), c6(:, 7));
       case 7
        c7 = polyfit(X2, Y, 7);
        YFitted = Fd7(X1, c7(:, 1), c7(:, 2), c7(:, 3), c7(:, 4), c7(:, 5), c7(:, 6), c7(:, 7), c7(:, 8));
        otherwise
          cE = polyfit(X2, log(Y), 1);
          YFitted = exp(Fd1(X1, cE(:, 1), cE(:, 2)));     
    end
    
    sizeY = size(Y);
    i = n-1;
    Y = [YFitted(1:1:i) Y(2:1:sizeY(2))];
    i = sum(Y<=0)+1;
    k = 0;
    sizeY = size(Y);
    for j=2:sizeY(2)
        if Y(j-1) >= Y(j)
          k = j+1;  
        end
    end
    n = max(k,i);
    i = n;
    keep = init ~= n;
    init = n;
end
%{    
c3Translated = c3;
c3Translated(4) = c3Translated(4) + Fd3(1, c3(:, 1), c3(:, 2), c3(:, 3), c3(:, 4));
Yfitted3Translated = Fd3(X1, c3Translated(:, 1), c3Translated(:, 2), c3Translated(:, 3), c3Translated(:, 4));
%}





