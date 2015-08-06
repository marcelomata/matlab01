
no = 1; % ruido
%vetores vetores base do plano
u1 = [3;2;1];
u2 = [2;1;5];
data = [];
for i = 1:1000, %gera 1000 pontos
    c1 = 10*randn();
    c2 = 10*randn();
    y = c1*u1 + c2*u2 + no*randn(3,1); %gera vetor "aproximadamente no plano"
    data = [data;y']; %gera array n x 1000 com nuvem de pontos
end;
%plot3(data(:,1), data(:,2), data(:,3), '.'); % plota a nuvem
%hold on

C = cov(data);
[v d] = eig(C);

v1 = v(:,1);
v2 = v(:,2);
v3 = v(:,3);
x0 = [-0;-0;-0];
ax = 1;
scale = 200;
ax = ax*scale;

xs3 = [x0(1), v3(1)];
ys3 = [x0(2), v3(2)];
zs3 = [x0(3), v3(3)];

xs2 = [x0(1), v2(1)];
ys2 = [x0(2), v2(2)];
zs2 = [x0(3), v2(3)];

xs1 = [x0(1), v1(1)];
ys1 = [x0(2), v1(2)];
zs1 = [x0(3), v1(3)];

plot3(data(:,1), data(:,2), data(:,3), '.') % plota a nuvem
axis([-ax ax -ax ax -ax ax])
hold on
plot3(xs3*scale,ys3*scale,zs3*scale, 'r');
plot3(xs2*scale,ys2*scale,zs2*scale, 'g')
plot3(xs1*scale,ys1*scale,zs1*scale, 'b')


%%%%%%%%%%-------------- Considerações ---------------%%%%%%%%
%
% O autovetor relacionado ao menor autovalor será aproximadamente a normal
% do plano, pois é perpendicular ao plano formado pelos dois vetores de com
% maior autovalor
%
