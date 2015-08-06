%note X,Y, and Z are all col vector
function [x,y,z] = Camera2Object(X,Y,Z, Do, f, Di)
delta = 1/Di + 1/Do - 1/f;
T = [-Do/Di   Do*delta; 1/Di  1/f-1/Di];
R = T*[X(:)';Y(:)'];
x = R(1,:);
y = R(2,:);
x = reshape(x, size(X));
y = reshape(y, size(Y));
z = Z;

