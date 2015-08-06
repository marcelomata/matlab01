
%no = 1; % ruido
%no = 2; % ruido
%no = 20; % ruido
no = 200; % ruido
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

normU1 = norm(u1);
normU2 = norm(u2);
u1Nomalized = double(u1/normU1);
u2Nomalized = double(u2/normU2);
dist1 = norm(normalReal - v1);
%dist2 = norm(normalReal - v1);
%dist3 = norm(normalReal - v1);
%dist4 = norm(normalReal - v1);
normalReal = cross(u1Nomalized, u2Nomalized);

xsNR = [x0(1), normalReal(1)];
ysNR = [x0(2), normalReal(2)];
zsNR = [x0(3), normalReal(3)];
plot3(xsNR*scale,ysNR*scale,zsNR*scale, 'r')

diff1 = normalReal - v1;
%diff2 = normalReal - v1;
%diff3 = normalReal - v1;
%diff4 = normalReal - v1;


%%%%%%%%%%-------------- Considerações ---------------%%%%%%%%
%
% a diferença entre os vetores foi para:
%
% no -> 1  = -0.1287 0.1864 0.0140, 
% distancia entre v1 e normalReal -> 0.2270
%
% no -> 2  = -0.1275 0.1872 0.0148
% distancia entre v1 e normalReal -> 0.2281
%
% no -> 20  = -0.1243 0.1891 0.0181
% distancia entre v1 e normalReal -> 0.0.2308
%
% no -> 200  = -0.3852 -0.5371 0.5088
% distancia entre v1 e normalReal -> 1.6898
%
%
% No gráfico percebe-se uma distância entre os dois vetores a partir de 
% no = 20
%
