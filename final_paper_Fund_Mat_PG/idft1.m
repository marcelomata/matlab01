function [iw] = idft1(wR,wI,n)
    %[r, c] = size(w);
    [r, c] = size(wR);
    iw = zeros(n,1);
    %sumR = zeros(n,1);
    %sumI = zeros(n,1);
    sum = zeros(n,1);
    for l = 1:n
        sum(l) = wR(1)/2;
        for j = 2:r
            %sum = sum + (X(j)*(cos((l*2*pi*l*j)/r)-i*sin((l*2*pi*l*j)/r)));
            %img = (cos((l*2*pi*l*j)/r) + sin((l*2*pi*l*j)/r));
            %(cos((l*2*pi*l*j)/r) + sin((l*2*pi*l*j)/r));
            c = cos((2*pi*(l-1)*(j-1))/r);
            s = sin((2*pi*(l-1)*(j-1))/r);
            %c = cos((2*pi*l*j)/r);
            %s = sin((2*pi*l*j)/r);
            %sumR(l) = sumR(l) + (w(j)*real(img));
            %sumI(l) = sumI(l) + (w(j)*imag(img));
            sum(l) = sum(l) + (wR(j)*c) + (wI(j)*s);
        end;
    end;
    iw = sum;
end