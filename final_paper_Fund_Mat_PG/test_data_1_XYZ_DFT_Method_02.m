tic;

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
%%%%%%%%%%%%%%%%%%%%%        Normalize        %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[rN cN] = size(torsoX1);
torso1 = zeros(rN, 3);
torso2 = zeros(rN, 3);
for x = 1: rN
    torso1(x,:)= [double(torsoX1(x)) double(torsoY1(x)) double(torsoZ1(x))];
    %torso1(x,:) = torso1(x,:) / norm(torso1(x,:));
    torso2(x,:) = [double(torsoX2(x)) double(torsoY2(x)) double(torsoZ2(x))];
    %torso2(x,:) = torso2(x,:) / norm(torso2(x,:));
end;

[rN cN] = size(rHandX1);
rHand1 = zeros(rN, 3);
rHand2 = zeros(rN, 3);
for x = 1: rN
    rHand1(x,:)= [double(rHandX1(x)) double(rHandY1(x)) double(rHandZ1(x))];
    rHand1(x,:) = rHand1(x,:) / norm(rHand1(x,:));
    rHand2(x,:) = [double(rHandX2(x)) double(rHandY2(x)) double(rHandZ2(x))];
    rHand2(x,:) = rHand2(x,:) / norm(rHand2(x,:));
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
for x = 1: rN
    rHip1(x,:)= [double(rHipX1(x)) double(rHipY1(x)) double(rHipZ1(x))];
    rHip1(x,:) = rHip1(x,:) / norm(rHip1(x,:));
    rHip2(x,:) = [double(rHipX2(x)) double(rHipY2(x)) double(rHipZ2(x))];
    rHip2(x,:) = rHip2(x,:) / norm(rHip2(x,:));
end;

[rN cN] = size(lHipX1);
lHip1 = zeros(rN, 3);
lHip2 = zeros(rN, 3);
for x = 1: rN
    lHip1(x,:)= [double(lHipX1(x)) double(lHipY1(x)) double(lHipZ1(x))];
    lHip1(x,:) = lHip1(x,:) / norm(lHip1(x,:));
    lHip2(x,:) = [double(lHipX2(x)) double(lHipY2(x)) double(lHipZ2(x))];
    lHip2(x,:) = lHip2(x,:) / norm(lHip2(x,:));
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%        Plot        %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
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
%}

%{
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
%}

%{
subplot(1, 2, 1);
plot(rHand1);
subplot(1, 2, 2);
plot(rHand2);
%}

%{
subplot(1, 2, 1);
plot(torsoX1);
subplot(1, 2, 2);
plot(torsoX2);
%}

%{
subplot(1, 2, 1);
plot(rHipX1);
subplot(1, 2, 2);
plot(rHipX2);
%}

%{
subplot(1, 2, 1);
plot(lHipX1);
subplot(1, 2, 2);
plot(lHipX2);
%}

%{
subplot(1, 2, 1);
plot(torsonX1);
subplot(1, 2, 2);
plot(torsonX2);
%}

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

for x = 1 : rRot
    v1 = double(meanHip1(x,1:2));
    v2 = double(meanHip2(x,1:2));
    
    div = v1 ./ v2;
        
    costheta = dot(v1,v2)/(norm(v1)*norm(v2));
    theta = acos(costheta);
    cosTheta = cos(theta);
    sinTheta = sin(theta);
    rz = [cosTheta -sinTheta 0; sinTheta cosTheta 0; 0 0 1];
    rHand2(x,:) = rHand2(x,:)*rz;
    
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%      FFT - Matlab      %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

coef = 200;
maxrH = max(rHandX2);
nrHandX2 = double(rHandX2)/double(maxrH);
w = fft(double(nrHandX2));

r = real(w(1:coef));
maxR = max(r);
r = double(r)/double(maxR);
im = imag(w(1:coef));
maxIm = max(im);
im = double(im)/double(maxIm);

%plot(r+im);

%maxW = max(w);
%w = double(w)/maxW;
%test = ifft(r+1*i*im);
w_bkp = w;
w = w_bkp(1:coef);
w((coef/2)+1:coef) = w_bkp(rN-(coef/2)+1:rN);

iw = ifft(w);
%{
subplot(1, 2, 1);
plot(nrHandX2);
%axis([-500 500 -500 500]);
subplot(1, 2, 2);
plot(real(iw)+imag(iw));
%axis([-500 500 -500 500]);
%}

%%%%%%%%%%%%%%%%%%%%% FFT ND  %%%%%%%%%%%%%%%%%%%%% 

coef = 200;

rHand1W = fft(rHand1);
rHand2W = fft(rHand2);

%{
subplot(1, 2, 1);
plot(real(rHand1W)+imag(rHand1W));
subplot(1, 2, 2);
plot(real(rHand2W)+imag(rHand2W));
%}

rHand1W_bkp = rHand1W;
rHand1W = rHand1W_bkp(1:coef,:);
rHand1W((coef/2)+1:coef,:) = rHand1W_bkp(rN-(coef/2)+1:rN,:);
%plot(real(fftshift(rHand1W_bkp))+imag(fftshift(rHand1W_bkp)))
%rHand1IW = ifftn(rHand1W, 'nonsymmetric');
rHand1IW = ifftn(rHand1W, 'symmetric');

rHand2W_bkp = rHand2W;
rHand2W = rHand2W_bkp(1:coef,:);
rHand2W((coef/2)+1:coef,:) = rHand2W_bkp(rN-(coef/2)+1:rN,:);
%plot(real(fftshift(rHand2W_bkp))+imag(fftshift(rHand2W_bkp)))
%rHand2IW = ifftn(rHand2W, 'nonsymmetric');
rHand2IW = ifftn(rHand2W, 'symmetric');

%{
subplot(1, 2, 1);
plot(real(rHand1IW)+imag(rHand1IW));
subplot(1, 2, 2);
plot(real(rHand2IW)+imag(rHand2IW));
%}

%{
subplot(1, 2, 1);
plot(rHand1);
subplot(1, 2, 2);
plot(rHand2);
%}

djW = zeros(coef,1);
daW = zeros(coef,1);
n = 1;

for j = 1: coef
    sumj = 0;
    suma = 0; 
    
    for x = 1: n
        sumj = sumj+(norm(rHand1W(j,:)-rHand2W(j,:)));
    end;
    djW(j) = double(sumj)/double(n);
end;

final_result_W = sum(djW);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%        DFT        %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


maxrH = max(rHandX2);
nrHandX2 = double(rHandX2)/double(maxrH);

coef = 100;
[nrHandX2wR nrHandX2wI] = dft1(nrHandX2,coef);

coef = 40;
[nrHandX2wR nrHandX2wI] = dft1(nrHandX2,coef);

subplot(1, 2, 1);
plot(nrHandX2wR);
subplot(1, 2, 2);
plot(nrHandX2wI);

coef = 100;
nrHandX2iw = idft1(nrHandX2wR, nrHandX2wI,coef);

coef = 40;
nrHandX2iw = idft1(nrHandX2wR, nrHandX2wI,coef);

subplot(1, 2, 1);
plot(nrHandX2);
subplot(1, 2, 2);
plot(nrHandX2iw);

toc;