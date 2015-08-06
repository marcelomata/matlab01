x = -1:.02:1;
y = 3*x+.1*randn(size(x));
plot(x,y)
shg
y = 3*x+.3*randn(size(x));
plot(x,y,'x')
size(x)
X = [x' y']
c = cov(X)
[v,d] = eig(c)
plot(x,y,'x');hold on;
plot(x,y,'x');hold on;plot([0 .307],[0 .9517],'r');plot([0 -.9517], [0 .307],'g')
shg
axis equal