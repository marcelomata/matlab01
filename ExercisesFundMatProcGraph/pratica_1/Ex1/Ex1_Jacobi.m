Aa = [10 3; -2 9];
ba = [13, 7]';
Ab = [3 2; -5 6];
bb = [5 1]';
Ac = [2 4; 3 1];
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

%------------------ Gauss Jacobi ---------------%
Ma2 = diag(diag(Aa));
Mb2 = diag(diag(Ab));
Mc2 = diag(diag(Ac));

maxIterations = 50

%--------------------converge para x = [1 1] mais devagar que o gauss sidel-----------------%
Mk = Ma2;
iterations = 0;
x1 = x1+(inv(Mk)*(-Aa*x1+ba));
while iterations < maxIterations 
    iterations = iterations + 1;
    x1 = x1+(inv(Mk)*(-Aa*x1+ba));
    x1
end

%--------------------converge para x = [1 1] com quase o dobro de iterações que o anterior-----------------%
Mk = Mb2;
iterations = 0;
x2 = x2+(inv(Mk)*(-Ab*x2+bb));
while iterations < maxIterations 
    iterations = iterations + 1;
    x2 = x2+(inv(Mk)*(-Ab*x2+bb));
    x2
end

%--------------------diverge completamente--------------------%
Mk = Mc2;
iterations = 0;
x3 = x3+(inv(Mk)*(-Ac*x3+bc));
while iterations < maxIterations 
    iterations = iterations + 1;
    x3 = x3+(inv(Mk)*(-Ac*x3+bc));
    x3
end

%------------------ Raio espectral ---------------%
Mk = Ma2;
raioAa = max(abs(eig(inv(Mk)*(Mk-Aa))));
Mk = Mb2;
raioAb = max(abs(eig(inv(Mk)*(Mk-Ab))));
Mk = Mc2;
raioAc = max(abs(eig(inv(Mk)*(Mk-Ac))));
raioAa
raioAb
raioAc

%{
Quando o raio espectral é < 1 os valores convergem para a solução.
Quanto menor for o raio espectral neste caso mais répida será
a convergência.

Quando o raio espectral é > 1 os valores divergem da solução.

Assim, como o método de Gauss Jacobi possui raios espectrais maiores em
todos os casos, mesmo tendo convergência, está irá demorar
mais do que no método de Gauss Seidel
%}
