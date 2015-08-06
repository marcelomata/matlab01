tic;

D = load('data1.mat');
%pega os dois movimentos do arquivo
data11 = D.d11;
data12 = D.d12;
nSkeleton = 7;

minX = 0;
maxX = 500;
minY = -1000;
maxY = 1000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%        Movimento 1        %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

torsoX1 = int16(data11(1:nSkeleton:end, 1));
torsoY1 = int16(data11(1:nSkeleton:end, 2));
torsoZ1 = int16(data11(1:nSkeleton:end, 3));

translateX1 = -torsoX1;
translateY1 = -torsoY1;
translateZ1 = -torsoZ1;

[r1 c1] = size(torsoX1);

torsoX1 = zeros(r1,c1);
torsoY1 = zeros(r1,c1);
torsoZ1 = zeros(r1,c1);

%------------------------%

rHandX1 = int16(data11(6:nSkeleton:end, 1));
rHandY1 = int16(data11(6:nSkeleton:end, 2));
rHandZ1 = int16(data11(6:nSkeleton:end, 3));

rHandX1 = rHandX1 + translateX1;
rHandY1 = rHandY1 + translateY1;
rHandZ1 = rHandZ1 + translateZ1;

%------------------------%

rHipX1 = int16(data11(2:nSkeleton:end, 1));
rHipY1 = int16(data11(2:nSkeleton:end, 2));
rHipZ1 = int16(data11(2:nSkeleton:end, 3));

rHipX1 = rHipX1 + translateX1;
rHipY1 = rHipY1 + translateY1;
rHipZ1 = rHipZ1 + translateZ1;

%------------------------%

lHipX1 = int16(data11(3:nSkeleton:end, 1));
lHipY1 = int16(data11(3:nSkeleton:end, 2));
lHipZ1 = int16(data11(3:nSkeleton:end, 3));

lHipX1 = lHipX1 + translateX1;
lHipY1 = lHipY1 + translateY1;
lHipZ1 = lHipZ1 + translateZ1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%        Movimento 2        %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

torsoX2 = int16(data12(1:nSkeleton:end, 1));
torsoY2 = int16(data12(1:nSkeleton:end, 2));
torsoZ2 = int16(data12(1:nSkeleton:end, 3));

translateX2 = -torsoX2;
translateY2 = -torsoY2;
translateZ2 = -torsoZ2;

[r2 c2] = size(torsoX2);

torsoX2 = zeros(r2,c2);
torsoY2 = zeros(r2,c2);
torsoZ2 = zeros(r2,c2);

%------------------------%

%{
rHandX2 = int16(data11(4:nSkeleton:end, 1));
rHandY2 = int16(data11(4:nSkeleton:end, 2));
rHandZ2 = int16(data11(4:nSkeleton:end, 3));
%}

%{
rHandX2 = int16(data11(6:nSkeleton:end, 1));
rHandY2 = int16(data11(6:nSkeleton:end, 2));
rHandZ2 = int16(data11(6:nSkeleton:end, 3));
%}

%%{
rHandX2 = int16(data12(6:nSkeleton:end, 1));
rHandY2 = int16(data12(6:nSkeleton:end, 2));
rHandZ2 = int16(data12(6:nSkeleton:end, 3));
%%}

rHandX2 = rHandX2 + translateX2;
rHandY2 = rHandY2 + translateY2;
rHandZ2 = rHandZ2 + translateZ2;

%------------------------%

rHipX2 = int16(data11(2:nSkeleton:end, 1));
rHipY2 = int16(data11(2:nSkeleton:end, 2));
rHipZ2 = int16(data11(2:nSkeleton:end, 3));

rHipX2 = rHipX2 + translateX2;
rHipY2 = rHipY2 + translateY2;
rHipZ2 = rHipZ2 + translateZ2;

%------------------------%

lHipX2 = int16(data11(3:nSkeleton:end, 1));
lHipY2 = int16(data11(3:nSkeleton:end, 2));
lHipZ2 = int16(data11(3:nSkeleton:end, 3));

lHipX2 = lHipX2 + translateX2;
lHipY2 = lHipY2 + translateY2;
lHipZ2 = lHipZ2 + translateZ2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%       Create arrays 2 dimensions        %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[rN cN] = size(rHipX1);
rHip1 = zeros(rN, 3);
rHip2 = zeros(rN, 3);

rHip1 = [double(rHipX1) double(rHipY1) double(rHipZ1)];
rHip2 = [double(rHipX2) double(rHipY2) double(rHipZ2)];

[rN cN] = size(lHipX1);
lHip1 = zeros(rN, 3);
lHip2 = zeros(rN, 3);

lHip1 = [double(lHipX1) double(lHipY1) double(lHipZ1)];
lHip2 = [double(lHipX2) double(lHipY2) double(lHipZ2)];

[rN cN] = size(torsoX1);
torso1 = zeros(rN, 3); %origem, então já está em 0
torso2 = zeros(rN, 3);

torso2 = [double(torsoX2) double(torsoY2) double(torsoZ2)];

[rN cN] = size(rHandX1);
rHand1 = zeros(rN, 3);
rHand1 = zeros(rN, 3);

rHand1 = [double(rHandX1) double(rHandY1) double(rHandZ1)];
rHand2 = [double(rHandX2) double(rHandY2) double(rHandZ2)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%           Rotaciona           %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

waist1 = (rHip1 - abs(lHip1))/2; %waist1
waist2 = (rHip2 - abs(lHip2))/2; %waist2

%{
subplot(1, 2, 1);
plot(waist1);
subplot(1, 2, 2);
plot(waist2);
%}

[rRot cRot] = size(waist2);

bef = rHand2;
rHand2 = bef;    

for x = 1 : rRot
    v1 = double(waist1(x,1:2))-double(torso1(x,1:2));
    v2 = double(waist2(x,1:2))-double(torso2(x,1:2));
        
    costheta = dot(v1,v2)/(norm(v1)*norm(v2));
    theta = acos(costheta);
    cosTheta = cos(theta);
    sinTheta = sin(theta);
    rz = [cosTheta -sinTheta 0; sinTheta cosTheta 0; 0 0 1];
    rHand2(x,:) = rHand2(x,:)*rz;
    
    div = v1 ./ v2;
    rHand2(i,:) = rHand2(i,:).*[div(1) div(2) 1];      
end;

%{
subplot(1, 3, 1);
plot(bef);
axis([minX maxX minY maxY]);
subplot(1, 3, 2);
plot(rHand2);
axis([minX maxX minY maxY]);
subplot(1, 3, 3);
plot(rHand1);
axis([minX maxX minY maxY]);
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%        Método Lee           %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dj = zeros(rN,1);
da = zeros(rN,1);
n = 1;
for j = 1: rN
    sumj = 0;
    suma = 0; 
    
    for x = 1: n
        sumj = sumj+(norm(rHand1(j,:)-rHand2(j,:)));
        
        v0 = [1 0 0];
        v1 = double(rHand1(j,:));
        v2 = double(rHand2(j,:));

        costheta1 = dot(v0,v1)/(norm(v0)*norm(v1));
        theta1 = acos(costheta1);

        costheta2 = dot(v0,v2)/(norm(v0)*norm(v2));
        theta2 = acos(costheta2);
        
        suma = suma + (theta1 - theta2);
    end;
    dj(j) = double(sumj)/double(n);
    da(j) = double(suma)/double(n);
end;

final_result = sum(dj);
final_result = final_result + sum(da);

toc;