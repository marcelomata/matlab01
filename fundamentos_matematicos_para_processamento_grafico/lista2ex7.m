%%{
P = imread('pontos.bmp');
[py,px] = ind2sub(size(P), find(P==0));
py = py(1:500:end);
px = px(1:500:end);
%%}

%%{
px = [1000 900 400 200 150 300 600];
py = [100 125 150 200 300 400 450];
%%}

l = [px -py]';
n = size(l,2);

t = 0;
for i=2:n
    t = [t; t(i-1)+norm(l(:,i)-l(:,i-1))]; 
end
t = t/t(end);

A = []; X = [];
for i=1:n
   A = [A; 1 0 t(i) 0 t(i)^2 0 t(i)^3 0];
   A = [A; 0 1 0 t(i) 0 t(i)^2 0 t(i)^3];
   %A = [A; 1 0 t(i) 0 t(i)^2 0];
   %A = [A; 0 1 0 t(i) 0 t(i)^2];
   X = [X; l(1,i); l(2,i)];
end

B = inv(A'*A)*A'*X;

a = B(1:2);
b = B(3:4);
c = B(5:6);

t_ = 0:0.01:1;
y = repmat(a,1,length(t_)) + b*t_ + c*(t_.^2);

hold on
plot(l(1,:),l(2,:),'x')
plot(y(1,:),y(2,:),'Color','red','LineWidth',2)
axis([0 size(P,2) 0 -size(P,1)])
