function [wR, wI] = dft1(X,n)
    [r, c] = size(X);
    w = zeros(n,1);
    
    %%{
    wR = zeros(n+1,1);
    wI = zeros(n+1,1);
    sumR = zeros(n+1,1);
    sumI = zeros(n+1,1);
    %%}
    
    %{
    wR = zeros(n,1);
    wI = zeros(n,1);
    sumR = zeros(n,1);
    sumI = zeros(n,1);
    %}
    
    sum = zeros(n,1);
    img = zeros(r,1);
    for l = 1:n+1
        for j = 1:r
            %sum = sum + (X(j)*(cos((l*2*pi*l*j)/r)-i*sin((l*2*pi*l*j)/r)));
            %img(j) = exp(((-i)*l*2*pi*l*j)/r);
            %img = (cos((l*2*pi*l*j)/r) + sin((l*2*pi*l*j)/r));
            %(cos((l*2*pi*l*j)/r) + sin((l*2*pi*l*j)/r));
            c = cos((2*pi*(l-1)*(j-1))/r);
            s = sin((2*pi*(l-1)*(j-1))/r);
            %c = cos((2*pi*l*j)/r);
            %s = sin((2*pi*l*j)/r);
            %sumR(l) = sumR(l) + (X(j)*real(img(j)));
            %sumI(l) = sumI(l) + (X(j)*imag(img(j)));
            %sum(l) = sum(l) + (1i*X(j)*img);
            %sum(l) = sum(l) + (w(j)*c) + (w(j)*s);
            sumR(l) = sumR(l) + (X(j)*c);
            sumI(l) = sumI(l) + (X(j)*s);
        end;
        %s = X*img;
    end;
    %w = sumR+1i*sumI;
    %w = sum*2/r;
    wR = sumR*2/r;
    wI = sumI*2/r;
    %wR = sumR;
    %wI = sumI;
end