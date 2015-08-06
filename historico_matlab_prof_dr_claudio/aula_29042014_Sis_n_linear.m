%
% Exemplo de NR para resolver o problema da aula
%
% x^2 + y^2 = 3
% 3x - y^2 = 1
%
x0 = -1; y0 = -2; % aproximacao inicial
X = []; % contem a lista das iteracoes
for i = 1:20,
    % SELA de cada iteracao de NR
    A = [2*x0 2*y0; 3 -2*y0];
    B = [3 - x0^2 - y0^2; 1 + y0^2 - 3*x0];
    % solucao da iteracao seguinte
    itera = [x0; y0] + inv(A)*B;
    x1 = itera(1);
    y1 = itera(2);
    X = [X [x1;y1]];
    x0 = x1;
    y0 = y1;
end
plot(X'); legend('x_k', 'y_k'); grid