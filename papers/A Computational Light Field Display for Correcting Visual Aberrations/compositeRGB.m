
num = 0000;
MAX = mlf
GAMMA               = 2.2;
load(sprintf('output/CONTRAST_1.000000_Channel_1.mat'));  LF_R = LF;
load(sprintf('output/CONTRAST_1.000000_Channel_2.mat'));  LF_G = LF;
load(sprintf('output/CONTRAST_1.000000_Channel_3.mat'));  LF_B = LF;
%MAX =  max([LF_R(:); LF_G(:); LF_B(:)])
%return

[m,n] = size(LF_R);
COLLECTOR = zeros(m,n,3);
COLLECTOR(:,:,1) = LF_R/MAX;
COLLECTOR(:,:,2) = LF_G/MAX;
COLLECTOR(:,:,3) = LF_B/MAX;

addpath('output/Composite_Code');
%load 'output/300.mat'
% if(true)
%    figure
%    x = 0:0.1:15;
%    hist(LF, x);
%    axis([0 max(x(:)) 0 10]);
%    return
% end
%MAX = 1.4835;
max(LF(:))
Angular_Res         = 5;
Factor              = 1;    %image size/resolution factor, base is 128
Angular_HRes        = Angular_Res;    %just 1 becasue I use 1 lenticular sheet only
Angular_VRes        = Angular_Res;    %use 5, though you willl lose 2 views
Padding             = 12;
Screen_Pixels       = 128;

LF_RGB = zeros(Screen_Pixels*Angular_HRes, Screen_Pixels*Angular_VRes, 3);

for(ch = 1:3)
    IMG = COLLECTOR(:,:,ch);
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
        IMG_LF(:,:,viewNum) = target;
        %imwrite(target, sprintf('output/images/prefiltering-%02d.png',viewNum),'png'); %, 'Alpha', ones(384,512)*1.0
    end
    IMG_H = zeros(ROWS,COLS*Angular_HRes,Angular_VRes);
    for(i = 1:Angular_VRes)
        IMG_H(:,:,i) = composite5(IMG_LF(:,:,(i-1)*5+1),IMG_LF(:,:,(i-1)*5+2),IMG_LF(:,:,(i-1)*5+3),IMG_LF(:,:,(i-1)*5+4),IMG_LF(:,:,(i-1)*5+5));
    end


    if(Angular_VRes == 5)
        IMG_V = composite5(IMG_H(:,:,1)',IMG_H(:,:,2)',IMG_H(:,:,3)',IMG_H(:,:,4)',IMG_H(:,:,5)')';
    end

    LF = IMG_V;

    %IPHONE SCREEN GAMMA
    %http://www.anandtech.com/show/6334/iphone-5-screen-performance
    %http://www.displaymate.com/iPhone_4_ShootOut.htm   ==> 2.68
    if(Padding ~= 0)
        s = (Padding/2*Factor)*Angular_Res+1;
        e = (Padding/2 + Screen_Pixels)*Factor*Angular_Res;
       LF = LF(s:e,s:e,:); 
    end

    LF = LF.^(1/GAMMA);
    [m,n] = size(LF);
    img = zeros(m,n,1);
    %img(:,:,1) = LF;
    LF_RGB(:,:,ch) = LF;
    %imwrite(img, sprintf('output/LF_%d.png', ch), 'png');
end
imwrite(LF_RGB, sprintf('output/LF_RGB_%04d.png', num), 'png')
