D = load('data1.mat');
data11 = D.d11;
data12 = D.d12;
nSkeleton = 7;

minX = 0;
maxX = 500;
minY = -1;
maxY = 1;

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

%@@@@@@@@   change 4 to 6 and data11 to data12
rHandX2 = int16(data11(4:nSkeleton:end, 1));
rHandY2 = int16(data11(4:nSkeleton:end, 2));
rHandZ2 = int16(data11(4:nSkeleton:end, 3));

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
%%%%%%%%%%%%%%%%%%%%%        Normalize        %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[rN cN] = size(torsoX1);
torso1 = zeros(rN, 3);
torso2 = zeros(rN, 3);
for i = 1: rN
    torso1(i,:)= [double(torsoX1(i)) double(torsoY1(i)) double(torsoZ1(i))];
    %torso1(i,:) = torso1(i,:) / norm(torso1(i,:));
    torso2(i,:) = [double(torsoX2(i)) double(torsoY2(i)) double(torsoZ2(i))];
    %torso2(i,:) = torso2(i,:) / norm(torso2(i,:));
end;

[rN cN] = size(rHandX1);
rHand1 = zeros(rN, 3);
rHand2 = zeros(rN, 3);
for i = 1: rN
    rHand1(i,:)= [double(rHandX1(i)) double(rHandY1(i)) double(rHandZ1(i))];
    rHand1(i,:) = rHand1(i,:) / norm(rHand1(i,:));
    rHand2(i,:) = [double(rHandX2(i)) double(rHandY2(i)) double(rHandZ2(i))];
    rHand2(i,:) = rHand2(i,:) / norm(rHand2(i,:));
end;
%{
subplot(1, 2, 1);
plot(rHand1);
subplot(1, 2, 2);
plot(rHand2);
%}
%plot(rHand1);
%plot(rHand2);


[rN cN] = size(rHipX1);
rHip1 = zeros(rN, 3);
rHip2 = zeros(rN, 3);
for i = 1: rN
    rHip1(i,:)= [double(rHipX1(i)) double(rHipY1(i)) double(rHipZ1(i))];
    rHip1(i,:) = rHip1(i,:) / norm(rHip1(i,:));
    rHip2(i,:) = [double(rHipX2(i)) double(rHipY2(i)) double(rHipZ2(i))];
    rHip2(i,:) = rHip2(i,:) / norm(rHip2(i,:));
end;

[rN cN] = size(lHipX1);
lHip1 = zeros(rN, 3);
lHip2 = zeros(rN, 3);
for i = 1: rN
    lHip1(i,:)= [double(lHipX1(i)) double(lHipY1(i)) double(lHipZ1(i))];
    lHip1(i,:) = lHip1(i,:) / norm(lHip1(i,:));
    lHip2(i,:) = [double(lHipX2(i)) double(lHipY2(i)) double(lHipZ2(i))];
    lHip2(i,:) = lHip2(i,:) / norm(lHip2(i,:));
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%        Plot        %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axis([minX maxX minY maxY]);
subplot(4, 2, 1);
plot(torso1);
subplot(4, 2, 2);
plot(torso2);
subplot(4, 2, 3);
plot(rHand1);
subplot(4, 2, 4);
plot(rHand2);
subplot(4, 2, 5);
plot(lHip1);
subplot(4, 2, 6);
plot(lHip2);
subplot(4, 2, 7);
plot(rHip1);
subplot(4, 2, 8);
plot(rHip2);

subplot(3, 2, 1);
plot(rHandX1);
subplot(3, 2, 2);
plot(rHandX2);
subplot(3, 2, 3);
plot(rHandY1);
subplot(3, 2, 4);
plot(rHandY2);
subplot(3, 2, 5);
plot(rHandZ1);
subplot(3, 2, 6);
plot(rHandZ2);

subplot(1, 2, 1);
plot(rHand1);
subplot(1, 2, 2);
plot(rHand2);

subplot(1, 2, 1);
plot(torsoX1);
subplot(1, 2, 2);
plot(torsoX2);

subplot(1, 2, 1);
plot(rHipX1);
subplot(1, 2, 2);
plot(rHipX2);

subplot(1, 2, 1);
plot(lHipX1);
subplot(1, 2, 2);
plot(lHipX2);

subplot(1, 2, 1);
plot(torsonX1);
subplot(1, 2, 2);
plot(torsonX2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%           Rotaciona           %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meanHip1 = (rHip1 - abs(lHip1))/2;
meanHip2 = (rHip2 - abs(lHip2))/2;
%{
subplot(1, 2, 1);
plot(meanHip1);
subplot(1, 2, 2);
plot(meanHip2);
%}

[rRot cRot] = size(meanHip2);

bef = rHand2;
rHand2 = bef;    

for i = 1 : rRot
    v1 = double(meanHip1(i,1:2));
    v2 = double(meanHip2(i,1:2));
    
    div = v1 ./ v2;
        
    costheta = dot(v1,v2)/(norm(v1)*norm(v2));
    theta = acos(costheta);
    cosTheta = cos(theta);
    sinTheta = sin(theta);
    rz = [cosTheta -sinTheta 0; sinTheta cosTheta 0; 0 0 1];
    rHand2(i,:) = rHand2(i,:)*rz;
    
    %rHand2(i,:) = rHand2(i,:).*[div(1) div(2) 1];      
    %nao esta escalando corretamente
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
    
    for i = 1: n
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%        DFT        %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[torsowR11 torsowI11] = dft1(torsoX1,100);
[torsowR12 torsowI12] = dft1(torsoX2,100);

[torsonwR11 torsonwI11] = dft1(torsonX1,100);
[torsonwR12 torsonwI12] = dft1(torsonX2,100);
[torsonwR11 torsonwI11] = dft1(torsonX1,40);
[torsonwR12 torsonwI12] = dft1(torsonX2,40);
[torsonwR c] = size(torsonwR11);
[torsonwI c] = size(torsonwI11);
torsodiffnwR = sum(double(torsonwR12 - torsonwR11))/double(torsonwR);
torsodiffnwI = sum(double(torsonwI12 - torsonwI11))/double(torsonwI);
%plot(diffnwR);
%plot(diffnwI);
subplot(1, 2, 1);
plot(torsonwR11);
subplot(1, 2, 2);
plot(torsonwI11);

subplot(1, 2, 1);
plot(torsonwR12);
subplot(1, 2, 2);
plot(torsonwI12);



torsoiw11 = idft1(torsowR11, torsowI11,100);
torsoiw12 = idft1(torsowR12, torsowI12,100);

torsoniw11 = idft1(torsonwR11, torsonwI11,100);
torsoniw12 = idft1(torsonwR12, torsonwI12,100);

torsoniw11 = idft1(torsonwR11, torsonwI11,40);
torsoniw12 = idft1(torsonwR12, torsonwI12,40);

subplot(1, 2, 1);
plot(torsoiw11);
subplot(1, 2, 2);
plot(torsoiw12);

subplot(1, 2, 1);
plot(torsoniw11);
subplot(1, 2, 2);
plot(torsoniw12);

[niw c] = size(torsoniw11);
torsodiff = sum(double(torsoniw11 - torsoniw12))/double(torsoniw);
plot(torsodiff);



