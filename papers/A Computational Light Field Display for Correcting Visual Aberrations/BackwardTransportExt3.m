function [Yo, Vo] = BackwardTransportExt3(offset, BVals, Display, Camera, Vs, Do, XtraPix)
%Ang_Res, Sensor_Res, Sensor_Sampling, Screen_Sampling, Vs, Do, f, Di)
Yo = zeros(length(Vs),Camera.Sensor_Res);
Vo = zeros(length(Vs),Camera.Sensor_Res);
Ang_Res = Display.Angular_Res;

for(j = 1:Camera.Sensor_Res)           
    Ys = ones(length(Vs),1)*Camera.Sensor_Sampling(j);%emitting rays from the sensor pixel
    [Yo(:,j), Vo(:,j), dummy] = Camera2Object(Ys, Vs', '', Do, Camera.f, Camera.Di);  %propagate to display plane
    Vo(:,j) = Vo(:,j)/pi*180;                               %change from radian to degree
    Yo(:,j) = Yo(:,j) + offset;
    Yo(:,j) = dsearchn(Display.Screen_Sampling,  Yo(:,j));          %find the closest spatial pixel bucket
    S = Vo(:,j);        K = S;
    if(Ang_Res == 1)
        K(:) = 1;
    else
        for(a = 1:length(BVals)-1)
            %maybe the problem is here, instead of making central view
            %being 0, maybe just make the first view being "1"
            K(S >= BVals(a) & S < BVals(a+1)) = a - Ang_Res*XtraPix;
        end
        %If the sparse() complains, it's probably here!
        K(S < BVals(1) |  S > BVals(length(BVals))) = inf;
    end
    Vo(:,j) = K;
end
if(Ang_Res ~= 1)
    %go across the next pixel
    Yo(Vo <= Ang_Res*(-XtraPix+1)                  ) = Yo(Vo <= Ang_Res*(-XtraPix+1) ) - XtraPix;
    for(i = (-XtraPix+1):1:XtraPix)
        Yo(Vo <= Ang_Res*(i+1) & Vo > Ang_Res*i) = Yo(Vo <= Ang_Res*(i+1) & Vo > Ang_Res*i) + i;
    end
    Yo(Vo >  Ang_Res*XtraPix                   ) = Yo(Vo >  Ang_Res*XtraPix) + XtraPix;
    %cycling
    Vo = mod(Vo+Ang_Res-1,Ang_Res)+1;
end