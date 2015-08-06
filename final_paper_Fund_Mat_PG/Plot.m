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