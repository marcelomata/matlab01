f1=inline('exp(-x)/y^2');
f1exata=inline('(8-3*exp(-x)+3*exp(-1))^(1/3)');
exercicio3(1,4,50,2,f,fexata)

Ex 3.b:
f2=inline('y/(x+1)-2*x*y');
f2exata=inline('(x+1)*exp(-x^2)');
exercicio3(0,5,50,1,f2,f2exata)

Ex 3.c:
f3=inline('-sin(t)/t - u/t');
f3exata=inline('cos(t)/t');
exercicio3(pi/2,2*pi,50,0,f3,f3exata)