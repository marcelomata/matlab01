function zoomX3Lin(Im)

[Linhas,Colunas] = size(Im);
Im = double(Im);
N = double(zeros(3*Linhas,3*Colunas,3));
X = double(zeros(3*Linhas,3*Colunas,3));
Y = double(zeros(3*Linhas,3*Colunas,3));

for i=3:(3*Linhas)
    for j=3:(3*Colunas)
        X(i,j) = i/3;
        Y(i,j) = j/3;
    end
end

ant = 0;
for i=3:(3*Linhas)
    for j=3:(3*Colunas)
        if (mod(Y(i,j),3) == 0)
            if (ant == 0)
                ant = uint8(Y(i,j));
            end
            if (mod(Y(i,j),3) == 0 && ant ~= 0)
                prox = uint8(Y(i,j));
                pixM = (Im(i,ant) - Im(i,prox))/3;
                if (pixM < 0)
                    N(i,j) = Im(i,ant);
                    N(i,j) = Im(i,prox);
                    N(i,ant+1) = Im(i,ant) + pixM;
                    N(i,prox-1) = Im(i,prox) - pixM;
                end
                if (pixM >= 0)
                    N(i,j) = Im(i,ant);
                    N(i,j) = Im(i,prox);
                    N(i,ant+1) = Im(i,ant) - pixM;
                    N(i,prox-1) = Im(i,prox) + pixM;
                end  
                    ant = prox;
            end
        end
    end
end

imshow(uint8(N))
end
            
                    
