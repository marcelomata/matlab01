function ret = composite5(L2,L1,M,R1,R2)

[m,n] = size(L1);
ret = zeros(m,n*5);

for(n = 1:n)
    ret(:,(n-1)*5+1) = R2(:,n);
    ret(:,(n-1)*5+2) = R1(:,n);
    ret(:,(n-1)*5+3) =  M(:,n);
    ret(:,(n-1)*5+4) = L1(:,n);
    ret(:,(n-1)*5+5) = L2(:,n);
end



