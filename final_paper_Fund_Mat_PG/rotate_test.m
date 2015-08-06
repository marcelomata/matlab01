%{
costheta = dot(double(v1),double(v2))/(norm(double(v1))*norm(double(v2)));
theta = acos(costheta);

costheta = dot(v1,v2)/(norm(v1)*norm(v2));
theta = acos(costheta);

v1 = [1 0 0];
v2 = [1 0 1];
x0 = [0, 0, 0];
temp1 = [0 v2(1)];
temp2 = [0 v2(2)];
temp3 = [0 v2(3)];
plot3(temp1, temp2, temp3);
costheta = dot(v1,v2)/(norm(v1)*norm(v2));
theta = acos(costheta);
cosTheta = -cos(theta);
sinTheta = -sin(theta);
rx = [1 0 0; 0 cosTheta -sinTheta; 0 sinTheta cosTheta];
ry = [cosTheta 0 sinTheta; 0  1 0; -sinTheta 0 cosTheta];
rz = [cosTheta -sinTheta 0; sinTheta cosTheta 0; 0 0 1];
rot = rx*ry*rz;
v2 = v2*rot;
v2 = v2*rx;
v2 = v2*ry;
v2 = v2*rz;
v2 = v2/norm(v2);
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%        Rotaciona - Escala        %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meanHipX1 = (rHipX1 - abs(lHipX1))/2;
meanHipY1 = (rHipY1 - abs(lHipY1))/2;
meanHipZ1 = (rHipZ1 - abs(lHipZ1))/2;

meanHipX2 = (rHipX2 - abs(lHipX2))/2;
meanHipY2 = (rHipY2 - abs(lHipY2))/2;
meanHipZ2 = (rHipZ2 - abs(lHipZ2))/2;

v1 = [meanHipX1 meanHipX1 meanHipX1];
v2 = [meanHipX2 meanHipX2 meanHipX2];

%%{
dotProd = double(meanHipX1.*meanHipX2)+double(meanHipY1.*meanHipY2)+double(meanHipZ1.*meanHipZ2);
mag1_2 = sqrt((double(meanHipX1.*meanHipX1)+double(meanHipY1.*meanHipY1)+double(meanHipZ1.*meanHipZ1)).*(double(meanHipX2.*meanHipX2)+double(meanHipY2.*meanHipY2)+double(meanHipZ2.*meanHipZ2)));
costheta = dotProd./mag1_2;
theta = acos(costheta);

[rRot cRot] = size(theta);

for i = 1 : rRot
    cosTheta = cos(theta(i));
    sinTheta = sin(theta(i));
    rx = [1 0 0; 0 cosTheta -sinTheta; 0 sinTheta cosTheta];
end;


%%}


%v1 = double([meanHipX1(i) meanHipY1(i) meanHipZ1(i)]);
    %v2 = double([meanHipX2(i) meanHipY2(i) meanHipZ2(i)]);