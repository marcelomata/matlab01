format long
f = inline('2*x+exp(-x)-2') %função
d = inline('2-exp(-x)') %derivada de f
g = inline('x - (2*x+exp(-x)-2)/(2-exp(-x))')

% I1 = (-2, -1)
% I2 = (0, 1)

x = -1;
for i=0:50 
    x = g(x)
end;

%converge para as duas
%converge para que possui raiz mais próxima do chute inicial