format long

f = inline('x^4+3*x^3+2*x^2-x-4');

%I1 = [-3, -2] 
%I2 = [0, 1] 

g1 = inline('x^4+3*x^3+2*x^2-4');
dg1 = inline('4*x^3+9*x^2+4*x');

a11 = -3; b11 = -2;
for i=1:5, c11 = (a11 + b11)/2; if (f(a11)*f(c11) < 0), b11 = c11; else, a11 = c11; end,[a11 b11],end %% refinando o intervalo que contem a raiz

a12 = 0; b12 = 1;
for i=1:5, c12 = (a12 + b12)/2; if (f(a12)*f(c12) < 0), b12 = c12; else, a12 = c12; end,[a12 b12],end %% refinando o intervalo que contem a raiz

x11 = (a11+b11)/2;
x11 = a11;  
dg1(x11)
x11 = b11;
dg1(x11)

x12 = a12;
dg1(x12)
x12 = b12;
dg1(x12)
for i=0 : 30
    x12 = g1(x12)
end;


g2 = inline('sqrt((-x^4-3*x^3+x+4)/2)');
dg2 = inline('1/(4*sqrt(-x^4-3*x^3+x+4))');

a21 = -3; b21 = -2;
% -2.2813   -2.2500
for i=1:5, c21 = (a21 + b21)/2; if (f(a21)*f(c21) < 0), b21 = c21; else, a21 = c21; end,[a21 b21],end %% refinando o intervalo que contem a raiz

a22 = 0; b22 = 1;
%0.9063    0.9375
for i=1:5, c22 = (a22 + b22)/2; if (f(a22)*f(c22) < 0), b22 = c22; else, a22 = c22; end,[a22 b22],end %% refinando o intervalo que contem a raiz

x21 = (a21+b21)/2;
dg2(x21)

x22 = (a22+b22)/2;
dg2(x22)

x22 = x21;
for i=0 : 10
    x22 = g2(x22)
end;





