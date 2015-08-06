function I_out=hist_eq(I_in)

[M,N]=size(I_in);
for i=1:256
    h(i)=sum(sum(I_in==i-1));
end;

I_out=I_in;
s=sum(h);
for i=1:256
    posicoes=find(I_in==i-1);
    I_out(posicoes)=sum(h(1:i))/s*255;
end;
figure,imshow(uint8(I_out))