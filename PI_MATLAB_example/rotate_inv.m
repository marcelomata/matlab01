function rotate_inv(Im,ang)

[Rows,Columns,C] = size(Im);
Im = double(Im);
xc = Columns/2;
yc = Rows/2;
N = double(zeros(Rows,Columns,C));

for j=1:C
    for y=1:Rows
        for x=1:Columns
            xd = (x-xc)*cos(ang) + (y-yc)*sin(ang) + xc;
            yd = (y-yc)*cos(ang) - (x-xc)*sin(ang) + yc;
            
            if(xd <=512 && xd>=1 && yd<=512 && yd>=1)
                N(x,y,j) = Im(round(xd),round(yd),j);
            end
        end
    end
end

figure,imshow(uint8(N));
end
        