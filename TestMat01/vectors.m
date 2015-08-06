minAxis = -3;
maxAxis = 4;
vector1 = [1 2];
vector2 = [-1 3];
subplot(1, 3, 1);
plot(vector1);
axis([minAxis maxAxis minAxis maxAxis]);

subplot(1, 3, 2);
plot(vector2);
axis([minAxis maxAxis minAxis maxAxis]);

vector3 = vector2-vector1;

subplot(1, 3, 3);
plot(vector3);
axis([minAxis maxAxis minAxis maxAxis]);