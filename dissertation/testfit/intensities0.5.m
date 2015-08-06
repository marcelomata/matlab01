
B = inline('a*x.^2+b*x+c', 'x', 'a', 'b', 'c');
B1 = inline('a*x+b', 'x', 'a', 'b');

X2 = [7 10 15 20 25 30];
E3Y = [2.09 4.14 8.89 14.97 22.2 29.8];
X3 = [1 3 5 7 10 15 20 25 30];

plot(X2, E3Y);

plot(X2, E3Y, 'color','r'); hold on;
plot(X2, B(X2, p7(1), p7(2), p7(3)), 'color','b');

plot(X3, B(X3, p7(1), p7(2), p7(3)), 'color','b');

p6 = polyfit(X1,E2Y,1);
p7 = polyfit(X2,E3Y,2);


%ctrl+c to stop execution
%{
for i = 1 to 130 do
  C(i) = B(i, a, b, c)
end_for
}%
