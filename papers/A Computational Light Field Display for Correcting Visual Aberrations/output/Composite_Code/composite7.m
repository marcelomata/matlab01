function ret = composite7(L3,L2,L1,M,R1,R2,R3)

[m,n] = size(L3);
ret = zeros(m,n*7);

for(n = 1:n)
    ret(:,(n-1)*7+1) = R3(:,n);
    ret(:,(n-1)*7+2) = R2(:,n);
    ret(:,(n-1)*7+3) = R1(:,n);
    ret(:,(n-1)*7+4) =  M(:,n);
    ret(:,(n-1)*7+5) = L1(:,n);
    ret(:,(n-1)*7+6) = L2(:,n);
    ret(:,(n-1)*7+7) = L3(:,n);
end



