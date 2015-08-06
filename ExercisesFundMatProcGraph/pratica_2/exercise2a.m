A = rand(3,3)*10;

x0 = [0;0;0];
x1 = [x0(1), A(1,1)]; y1 = [x0(2), A(2,1)]; z1 = [x0(3), A(3,1)];
x2 = [x0(1), A(1,2)]; y2 = [x0(2), A(2,2)]; z2 = [x0(3), A(3,2)];
x3 = [x0(1), A(1,3)]; y3 = [x0(2), A(2,3)]; z3 = [x0(3), A(3,3)];

ax = 1;
scale = 20;
ax = ax*scale;
plot3(x3*scale,y3*scale,z3*scale, 'r');
axis([-ax ax -ax ax -ax ax])
hold on
plot3(x2*scale,y2*scale,z2*scale, 'g')
plot3(x1*scale,y1*scale,z1*scale, 'b')

[R Q] = rq(A);
norm(Q(:,1))
norm(Q(:,2))
norm(Q(:,3))
%[R2 Q2] = qr(A);

xq1 = [x0(1), Q(1,1)]; yq1 = [x0(2), Q(2,1)]; zq1 = [x0(3), Q(3,1)];
xq2 = [x0(1), Q(1,2)]; yq2 = [x0(2), Q(2,2)]; zq2 = [x0(3), Q(3,2)];
xq3 = [x0(1), Q(1,3)]; yq3 = [x0(2), Q(2,3)]; zq3 = [x0(3), Q(3,3)];

%{
plot3(xq1*scale,yq3*scale,zq3*scale, 'r');
axis([-ax ax -ax ax -ax ax])
hold on
plot3(xq2*scale,yq2*scale,zq2*scale, 'g')
plot3(xq3*scale,yq1*scale,zq1*scale, 'b')
%}

%
% A função é válida, pois ela obtém corretamente a matriz R trinagular inferior com os 
% coeficientes que multiplicados pela base ortonormal Q geram a matriz A,
% onde cada vetor coluna de A pode ser escrito como uma combinação linear
% da base Q.
% 
% 


