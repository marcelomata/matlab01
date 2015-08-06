n = 6;
H = ones(n,n);
for i = 1 : n
    for j = 1 : n
        H(i,j) = 1/(i+j-1);
    end 
end
det(H)

b = ones(n,1);
b(:) = 1.0000001;

raio = max(abs(eig(inv(Mk)*(Mk-H))));
raio

x = inv(H)*b;
x

x = zeros(n,1);
%x(:) = 1000;

%com Gauss Seidel%
maxIterations = 100000;
Mk = tril(H);
iterations = 0;
x = x+(inv(Mk)*(-H*x+b));
while iterations < maxIterations 
    iterations = iterations + 1;
    x = x+(inv(Mk)*(-H*x+b));
    x
end

plot(H, b);

%{
O sistema converge apenas quando são utilizadas 100,000 iterações.
Além disso, qualquer perturbação em b altera o valor da solução.
A matriz de Hilbert é mal condicionada. Ao verificar o det(H)
observamos que o valor tende a 0.
%}
