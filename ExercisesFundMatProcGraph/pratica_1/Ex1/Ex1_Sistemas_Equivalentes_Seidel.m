Aa = [10 3; -2 9];
ATa = [10 3; -2 9]';
ba = [13, 7]';
Ab = [3 2; -5 6];
ATb = [3 2; -5 6]';
bb = [5 1]';
Ac = [2 4; 3 1];
ATc = [2 4; 3 1]';
bc = [6 4]';
x = [1 1]';
%chutes
%x0 = [3, 8]';
x1 = [0, 0]'; 
x2 = [-1, 10]'; 
x3 = rand(2,1);
x4 = rand(2,1)*10;
x5 = rand(2,1)*100;
Mk = zeros(2,2);
maxIterations = 30;

%------------------ Gauss Seidel ---------------%
Ma1 = tril(ATa*Aa);
Mb1 = tril(ATb*Ab);
Mc1 = tril(ATc*Ac);

%--------------------converge r�pido para x = [1 1]--------------------%
Mk = Ma1;
iterations = 0;
x1 = x1+(inv(Mk)*(-ATa*Aa*x1+ATa*ba));
while iterations < maxIterations 
    iterations = iterations + 1;
    x1 = x1+(inv(Mk)*(-ATa*Aa*x1+ATa*ba));
    x1
end

%--------------------converge para x = [1 1] mais devagar que o primeiro-----------------%
Mk = Mb1;
iterations = 0;
x2 = x2+(inv(Mk)*(-ATb*Ab*x2+ATb*bb));
while iterations < maxIterations 
    iterations = iterations + 1;
    x2 = x2+(inv(Mk)*(-ATb*Ab*x2+ATb*bb));
    x2
end

%errado, o inv(Mk) tem que ser a esquerda pois foi multiplicado a esquerda de xk+1%
%x2 = x2+((-Ab*x2'+bb)'*inv(Mk));

%--------------------diverge completamente--------------------%
Mk = Mc1;
iterations = 0;
x3 = x3+(inv(Mk)*(-ATc*Ac*x3+ATc*bc));
while iterations < maxIterations 
    iterations = iterations + 1;
    x3 = x3+(inv(Mk)*(-ATc*Ac*x3+ATc*bc));
    x3
end

%------------------ Raio espectral ---------------%
Mk = Ma1;
raioAa = max(abs(eig(inv(Mk)*(Mk-ATa*Aa))));
Mk = Mb1;
raioAb = max(abs(eig(inv(Mk)*(Mk-ATb*Ab))));
Mk = Mc1;
raioAc = max(abs(eig(inv(Mk)*(Mk-ATc*Ac))));
raioAa
raioAb
raioAc

%{
Quando o raio espectral � < 1 os valores convergem para a solu��o.
Quanto menor for o raio espectral neste caso mais r�pida ser�
a converg�ncia.

Quando o raio espectral � > 1 os valores divergem da solu��o.

Assim, como o m�todo de Gauss Jacobi possui raios espectrais maiores em
todos os casos, mesmo tendo converg�ncia, est� ir� demorar
mais do que no m�todo de Gauss Seidel
%}

%{
Com os sistemas equivalentes A'Ax = A'b a matriz que anteriormente
divergia agora converge tamb�m e � poss�vel obter a solu��o que
anteriormente n�o era poss�vel porque divergia.

Assim o raio espectral que anteriormente era > 1 agora � < 1 no caso
da matriz C.
%}