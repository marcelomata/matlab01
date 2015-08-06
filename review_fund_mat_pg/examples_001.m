A = [3 1 1; 1 5 2; 2 3 7]

M = diag(A)

M = diag(diag(A))

C=M-A

inv(M)*C

inv(M)

a = [3 2 1; 0 -2 1; 0 0 3]

f = inline('-x.^3+4*x.^2+3*x-18')
ff = inline('-2*x+x.^2')
p = [-1 4 3 -18];
roots(p);0
pp = [1 -2 0];
roots(pp);
z = fzero(f,1000);
z = fzero(inline('2*tanh(0.2*x-3)-0.2*x+2.8'),10);
fplot(f, [-10 10])

[v lambda] = eig(a);

c = [2 1; -5 1];
b = zeros(1,1);
v1 = inv(c)*b;


B=a-(lambda(1).*eye(3))
b = zeros(3,1);
v1 = inv(B)*b;

bb = [2 0 0; -1 1 0; 3 -2 0]


cc = [1 1; -1 1];

L34A = [4 1 1; -2 5 1; 0 1 3]

x = [2;2]
A = [3 2; 4 5]
AA = [2 1; 1 -3]
[s v] = eig(A)
x = 0; y =0;

f3 = inline('2*x^2+2*x*y-3*y^1-1');
f4 = inline('x^2+7*y^2-1');

C = [0.0797 0.0009 0.1586; 0.0009 0.7327 -0.7322; 0.1586 -0.7322 1.0517];


A = [0.75 0.25; 0.25 0.75];

u = [1./sqrt(1.25) -1/(2*sqrt(1.25))]

