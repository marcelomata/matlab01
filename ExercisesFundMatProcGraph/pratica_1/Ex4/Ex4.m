%% 4)

load dados_ex4
X = x;

% a)

Sigma = cov(X);

% b)

[A,Lambda] = eigs(Sigma);
Y = X*A;
cov(Y)-Lambda
% cov(Y) é aprox. Lambda (autovalores), que é matrix diagonal
% portanto as variáveis agora estão decorrelacionadas

% c)

% Sim, a terciera componente, cuja variância é 0.0032
cov(Y)

% d)

W = Sigma^(-1/2)*A;
Yw = X*W;

% Agora cov(Yw) = I