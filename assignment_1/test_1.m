I = imread('scene_raw.dng');
info = imfinfo('scene_raw.dng');
info.SubIFDs{1};
warning off MATLAB:tifflib:TIFFReadDirectory:libraryWarning
t = Tiff('scene_raw.dng','r');
offsets = getTag(t,'SubIFD');
setSubDirectory(t,offsets(1));
cfa = read(t);
close(t);

[h w num_channels] = size(cfa);
Im = zeros(10,10,3,'uint16');

%pede para o usuário clicar em um pixel (x,y)
[x,y] = ginput(1);

lin = 1;
col = 1;

for i = 1:10
    for j = 1:10
        if lin==2 
            if col==2 %r
                Im(i,j,1) = double(cfa(i,j));
                col = 1;
            else %g
                Im(i,j,2) = double(cfa(i,j));
                col = 2;
            end
        else
            if col==2 %g
                Im(i,j,2) = double(cfa(i,j));
                col = 1;
            else %b
                Im(i,j,3) = double(cfa(i,j));
                col = 2;
            end
        end
    end
    if lin == 1;
        lin = 2;
    else
    	lin = 1;
    end
end