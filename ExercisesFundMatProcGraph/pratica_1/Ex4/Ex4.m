%% 4)

load dados_ex4
X = x;

% a)

Sigma = cov(X);

% b)

[A,Lambda] = eigs(Sigma);
Y = X*A;
cov(Y)-Lambda
% cov(Y) � aprox. Lambda (autovalores), que � matrix diagonal
% portanto as vari�veis agora est�o decorrelacionadas

% c)

% Sim, a terciera componente, cuja vari�ncia � 0.0032
cov(Y)

% d)

W = Sigma^(-1/2)*A;
Yw = X*W;

% Agora cov(Yw) = I