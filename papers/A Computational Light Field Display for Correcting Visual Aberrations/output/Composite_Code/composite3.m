function ret = composite3(L,M,R)

[m,n,c] = size(L);

ret = zeros(m,n*3,c);

for(n = 1:n)
    ret(:,(n-1)*3+1,:) = R(:,n,:);
    ret(:,(n-1)*3+2,:) = M(:,n,:);
    ret(:,(n-1)*3+3,:) = L(:,n,:);
end



