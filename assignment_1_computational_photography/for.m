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
            lin = 1;
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
            lin = 2;
        end
    end
end