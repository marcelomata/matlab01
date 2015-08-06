function ex_7_lista_2(n)

%obtém n pontos clicados pelo usuário
%[x,y] = ginput(n);
n=3;

x = [1 30 50];
y = [2 40 80];

%cria matriz A
syms t;
for i=1:2:2*n,
    A(i:i+1,:)=[eye(2) t*eye(2) t^2*eye(2)];
end

%cria vetor b com os pontos clicados pelo usuário, da forma 
%(x1, y1, x2, y2, ..., xn, yn)'
count = 1;
for i=1:2:2*length(x)
    b(i,1)=x(count);
    b(i+1,1)=y(count);
    count=count+1;
end

%calcula vetor x (termos a, b e c)
x=inv(A'*A)*A'*b;

%calcula os valores de v(t)
syms tt;
v(:,1)=x(1)+x(3)*tt+x(5)*tt^2;
v(:,2)=x(2)+x(4)*tt+x(6)*tt^2;

%plota a curva paramétrica
ezplot(v(:,1), v(:,2))