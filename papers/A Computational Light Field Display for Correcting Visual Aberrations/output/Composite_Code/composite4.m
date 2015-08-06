function ret = composite4(L2,L1,R1,R2)

[m,n] = size(L1);
ret = zeros(m,n*4);

for(n = 1:n)
    ret(:,(n-1)*4+1) = R2(:,n);
    ret(:,(n-1)*4+2) = R1(:,n);
    ret(:,(n-1)*4+3) = L1(:,n);
    ret(:,(n-1)*4+4) = L2(:,n);
end



