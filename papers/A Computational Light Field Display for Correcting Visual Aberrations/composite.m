
%load 'output/LF_Prefiltered_Res_25_CONTRAST_1.000000_Channel_1.mat';
load 'output/LF_Prefiltered_Res_25_Channel_0.mat';
addpath('output/Composite_Code');
%load 'output/300.mat'
if(false)
   figure
   x = 0:0.025:10;
   hist(LF, x);
   axis([0 max(x(:)) 0 10]);
   return
end


%MAX = 1.4720;
%LF(LF > MAX) = MAX;
%IMG = LF;
IMG = LF/max(LF(:));
%IMG = LF/MAX;

ROWS = (Screen_Pixels+Padding)*Factor;
COLS = (Screen_Pixels+Padding)*Factor;

% note IMG has structure that is [nView]*Rows*Cols
IMGS = zeros(ROWS, COLS, Angular_HRes*Angular_VRes);
%unravel image
for(r = 1:ROWS)
    for(c = 1:COLS)
        index = ((r-1)*COLS + c-1)*Angular_HRes*Angular_VRes;
        IMGS(c,r,:) = IMG(index+1:index+Angular_HRes*Angular_VRes);
    end
end


IMG_LF = zeros(ROWS, COLS, Angular_HRes*Angular_VRes);
%now you need to switch row and col for naming
for(i = 1:Angular_HRes*Angular_VRes)
    R = mod(i-1,Angular_VRes)+1;
    C = floor((i-1)/Angular_VRes)+1;
    
    viewNum = (R-1)*Angular_HRes + C;
    target = IMGS(:,:,i);
    %if(sum(target(:)) == ROWS*COLS)
    %    target = rand(ROWS, COLS);
    %end
    IMG_LF(:,:,viewNum) = target;
    %imwrite(target, sprintf('output/images/prefiltering-%02d.png',viewNum),'png'); %, 'Alpha', ones(384,512)*1.0
end


IMG_H = zeros(ROWS,COLS*Angular_HRes,Angular_VRes);
for(i = 1:Angular_VRes)
    if(Angular_HRes == 5)
        %IMG_H(:,:,i) = composite5(IMG_LF(:,:,(i-1)*5+5),IMG_LF(:,:,(i-1)*5+4),IMG_LF(:,:,(i-1)*5+3),IMG_LF(:,:,(i-1)*5+2),IMG_LF(:,:,(i-1)*5+1));
        IMG_H(:,:,i) = composite5(IMG_LF(:,:,(i-1)*5+1),IMG_LF(:,:,(i-1)*5+2),IMG_LF(:,:,(i-1)*5+3),IMG_LF(:,:,(i-1)*5+4),IMG_LF(:,:,(i-1)*5+5));
    elseif(Angular_HRes == 3)
        IMG_H(:,:,i) = composite3(IMG_LF(:,:,(i-1)*3+3),IMG_LF(:,:,(i-1)*3+2),IMG_LF(:,:,(i-1)*3+1));
    elseif(Angular_HRes == 2)
        IMG_H(:,:,i) = composite2(IMG_LF(:,:,(i-1)*2+2),IMG_LF(:,:,(i-1)*2+1));
    elseif(Angular_HRes == 1)
        IMG_H(:,:,i) = IMG_LF(:,:,(i-1)*1+1);
    end
end


if(Angular_VRes == 5)
    %IMG_V = composite5(IMG_H(:,:,5)',IMG_H(:,:,4)',IMG_H(:,:,3)',IMG_H(:,:,2)',IMG_H(:,:,1)')';
    IMG_V = composite5(IMG_H(:,:,1)',IMG_H(:,:,2)',IMG_H(:,:,3)',IMG_H(:,:,4)',IMG_H(:,:,5)')';
elseif(Angular_VRes == 3)
    %IMG_V = composite3(IMG_H(:,:,3)',IMG_H(:,:,2)',IMG_H(:,:,1)')';
    IMG_V = composite3(IMG_H(:,:,1)',IMG_H(:,:,2)',IMG_H(:,:,3)')';
elseif(Angular_VRes == 2)
    %IMG_V = composite2(IMG_H(:,:,2)',IMG_H(:,:,1)')';
    IMG_V = composite2(IMG_H(:,:,1)',IMG_H(:,:,2)')';
elseif(Angular_VRes == 1)
    IMG_V = IMG_H;
end
LF = IMG_V;
%imshow(LF)


%IPHONE SCREEN GAMMA
%http://www.anandtech.com/show/6334/iphone-5-screen-performance
%http://www.displaymate.com/iPhone_4_ShootOut.htm   ==> 2.68
if(Padding ~= 0)
    s = (Padding/2*Factor)*Angular_Res+1;
    e = (Padding/2 + Screen_Pixels)*Factor*Angular_Res;
   LF = LF(s:e,s:e,:); 
end

%LF = LF.^(1/2.68);
LF = LF.^(1/GAMMA);
[m,n] = size(LF)
img = zeros(m,n,3);
img(:,:,1) = LF;
img(:,:,2) = LF;
img(:,:,3) = LF;
imwrite(img, 'output/LF_W.png', 'png');
