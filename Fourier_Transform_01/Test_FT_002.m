fr = [697 770 852 941];
fc = [1209 1336 1477];
%maxt = 0.25;
maxt = 0.5;

s = '0';

for i = 1:9 

    switch s
        case '*', k = 4; j = 1;
        case '0', k = 4; j = 2;
        case '#', k = 4; j = 3;
        otherwise,
        d = s-'0'; j = mod(d-1,3)+1; k = (d-j)/3+1;
    end

    Fs = 32768;
    %Fs = 1000;
    %Fs = 200000;
    t = 0:1/Fs:maxt;

    y1 = sin(2*pi*fr(k)*t);
    y2 = sin(2*pi*fc(j)*t);
    y = (y1 + y2)/2;
    %y = y1 + y2;

    sound(y,Fs)

    s = s+1;

end;

n = length(y);
t = (0:n-1)/Fs

p = abs(fft(y));
f = (0:n-1)*(Fs/n);
plot(f,p);
axis([500 1700 0 600])





