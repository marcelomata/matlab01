%{
y = ae^bx => ln y = ln a + bx
Observe que b multiplica X
%}
dados = load('dados_ex3.mat');
X = dados.x;
expY = dados.y;
linY = log(expY);
n = size(X);
MX = ones(2, n(2))';
MX(:,1) = X(:);
%{
O erro quadrático pode ser formulado como
(Ax-b)' * (Ax-b) ou A'Ax = A'b = x = inv(A'A)*A'b
%}
ba = (inv(MX'*MX)*MX')*linY';
%{
Na função exponencial
elemento ba(1)equivale ao b que deve ser multiplicado pelo X
elemento ba(2)equivale ao a
%}
expAB = [exp(ba(2)), ba(1)];
YAjuste = expAB(1)*exp(expAB(2)*X);
plot(X,expY,'r'); hold on; plot(X,YAjuste,'b'); hold off;

%{
load 'dados_ex3'
A=[ones(40,1) x'];
b=[log(y)]';
x1=inv(A'*A)*A'*b;
x1=[exp(x1(1)) x1(2)];
x1
y1=x1(1)*exp(x1(2)*x);
%plot(x,y,'rx'); hold on; plot(x,y1,'b'); hold off;
%}
