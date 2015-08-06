format long
f = inline('2*x+exp(-x)-2') %função

g1 = inline('(-exp(-x)+2)/2') %recursão 1
d1 = inline('exp(-x)')
% I1 = (-2, -1)
% I2 = (0, 1)

% como g'(x) = exp(-x), então no segundo intervalo essa recursão converge
% no segundo intervalo converge novamente para o valor entre 0 e 1.
% como analizando g'(x) = exp(-x) para p segundo intervalo possui
% |g(r)|>1

x1 = 100;
for i=0:50 
    x1 = g1(x1)
end;

x2 = -1.5;
for i=0:50 
    x2 = g1(x2)
end;


g2 = inline('-log(-2*x+2)') %recursão 2, para esta recursão o x deve ser 
% menor ou igual a zero por causa do ln x
d2 = inline('-1/(-2*x+2)');
% I1 = (-2, -1)
% I2 = (0, 1)

% como g'(x) =-1/(-2*x+2, então no primeiro intervalo dessa recursão converge
% pois |g(r)|>1, porém no segundo intervalo g'(r) quando g'(x) com x >= 0.5
% |g(x)|>=1 e vimos anteriormente que a raiz entre 0 e 1 é aproximadamente 0.7
%

x1 = 0;
for i=0:50 
    x1 = g2(x1)
end;

x2 = -1.5;
for i=0:50 
    x2 = g2(x2)
end;

