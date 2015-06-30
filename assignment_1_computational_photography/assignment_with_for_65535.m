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
Im = zeros(h,w,3,'uint16');
%numMaxGray = info.SubIFDs{1}.MaxSampleValue/255;
%numMaxGray = 200;
lin = 2;
col = 2;
Im2 = demosaic(cfa, 'bggr');
%imtool(Im2);

%colocar filtro aqui
%demosaic
for i = 2:h-1
    for j = 2:w-1
        if lin==2 
            if col==2 %r
                Im(i,j,1) = double(cfa(i,j));
                Im(i,j,2) = (double(cfa(i-1,j)+cfa(i+1,j)+cfa(i,j-1)+cfa(i-1,j))/4);
                Im(i,j,3) = (double(cfa(i-1,j-1)+cfa(i+1,j+1)+cfa(i-1,j+1)+cfa(i+1,j+1))/4);
                col = 1;
            else %g
                Im(i,j,2) = double(cfa(i,j));
                Im(i,j,1) = (double(cfa(i,j+1)+cfa(i,j-1))/2);
                Im(i,j,3) = (double(cfa(i-1,j)+cfa(i+1,j))/2);
                col = 2;
            end
        else
            if col==2 %g
                Im(i,j,2) = double(cfa(i,j));
                Im(i,j,3) = (double(cfa(i,j+1)+cfa(i,j-1))/2);
                Im(i,j,1) = (double(cfa(i-1,j)+cfa(i+1,j))/2);
                col = 1;
            else %b
                Im(i,j,3) = double(cfa(i,j));
                Im(i,j,2) = (double(cfa(i-1,j)+cfa(i+1,j)+cfa(i,j-1)+cfa(i-1,j))/4);
                Im(i,j,1) = (double(cfa(i-1,j-1)+cfa(i+1,j+1)+cfa(i-1,j+1)+cfa(i+1,j+1))/4);
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

%imtool(Im);