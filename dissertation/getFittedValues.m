function [YFitted] = getFittedValues(Y, XY, XYFitted, degree) 

    switch degree
          case 2
            Fd2 = inline('a*x.^2+b*x+c', 'x', 'a', 'b', 'c');
            c2 = polyfit(XY, Y, 2);
            YFitted = Fd2(XYFitted, c2(:, 1), c2(:, 2), c2(:, 3));
          case 3
            Fd3 = inline('a*x.^3+b*x.^2+c*x+d', 'x', 'a', 'b', 'c', 'd');
            c3 = polyfit(XY, Y, 3);
            YFitted = Fd3(XYFitted, c3(:, 1), c3(:, 2), c3(:, 3), c3(:, 4));
          case 4
            Fd4 = inline('a*x.^4+b*x.^3+c*x.^2+d*x+e', 'x', 'a', 'b', 'c', 'd', 'e');
            c4 = polyfit(XY, Y, 4);
            YFitted = Fd4(XYFitted, c4(:, 1), c4(:, 2), c4(:, 3), c4(:, 4), c4(:, 5));
          case 5
            Fd5 = inline('a*x.^5+b*x.^4+c*x.^3+d*x.^2+e*x+f', 'x', 'a', 'b', 'c', 'd', 'e', 'f');
            c5 = polyfit(XY, Y, 5);
            YFitted = Fd5(XYFitted, c5(:, 1), c5(:, 2), c5(:, 3), c5(:, 4), c5(:, 5), c5(:, 6));
          case 6
            Fd6 = inline('a*x.^6+b*x.^5+c*x.^4+d*x.^3+e*x.^2+f*x+g', 'x', 'a', 'b', 'c', 'd', 'e', 'f', 'g');
            c6 = polyfit(XY, Y, 6);
            YFitted = Fd6(XYFitted, c6(:, 1), c6(:, 2), c6(:, 3), c6(:, 4), c6(:, 5), c6(:, 6), c6(:, 7));
          case 7
            Fd7 = inline('a*x.^8+b*x.^6+c*x.^5+d*x.^4+e*x.^3+f*x.^2+g*x+h', 'x', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h');
            c7 = polyfit(XY, Y, 7);
            YFitted = Fd7(XYFitted, c7(:, 1), c7(:, 2), c7(:, 3), c7(:, 4), c7(:, 5), c7(:, 6), c7(:, 7), c7(:, 8));
          otherwise
              Fd1 = inline('a*x+b', 'x', 'a', 'b');
              cE = polyfit(XY, log(Y), 1);
              YFitted = exp(Fd1(XYFitted, cE(:, 1), cE(:, 2)));     
        end
    
end

