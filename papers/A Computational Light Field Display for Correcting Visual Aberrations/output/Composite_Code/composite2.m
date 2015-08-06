function ret = composite2(L,R)

[m,n] = size(L);
ret = zeros(m,n*2);

for(n = 1:n)
    ret(:,(n-1)*2+1) = R(:,n);
    ret(:,(n-1)*2+2) = L(:,n);
end



