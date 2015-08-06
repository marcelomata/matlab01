%the camera parameters.
%Note that the lens power is fixed focal length
% fstop adjusts the aperture
% this in-sensor distance depends on the 
% focused distance Do.

%BTW, when change fstop or aperture, be sure to check
% if Sampling is too high to run.

Camera.f       = 50; %mm
Camera.fstop   = 8;       %fstop == 5, focus = 600
Camera.Aperture= Camera.f/Camera.fstop;
Camera.Focus   = 375;%mm
Camera.Di      = Camera.f*Camera.Focus/(Camera.Focus-Camera.f)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simulating eye retina(fovea region)
%Sensor_Width        = 1.1  %    %fovea is about 1.5mm in diameter, central square width = 1.06mm
%Sensor_Width        = Screen_Size/Do*Di  %don't use fovea size, it's much smaller than most display size
Camera.Sensor_Width        = Display.Screen_Pixels*Display.Screen_Pitch/Do*Camera.Di;  %does not affected by padding
Camera.Sensor_Res          = 128; %
Camera.Sensor_Pitch         = Camera.Sensor_Width/Camera.Sensor_Res; %in mm. 5.9micron.(Real cone 2.5)
Camera.Sensor_Sampling     = zeros(Camera.Sensor_Res,1);  %the pixel grid location
S                   = linspace(Camera.Sensor_Width/2, -Camera.Sensor_Width/2, Camera.Sensor_Res+1); %4 grid == 5 boundary
for(i = 1:length(S)-1)
    Camera.Sensor_Sampling(i) = (S(i) + S(i+1))/2;
end


%what does this corresponds?

%far-sighted case
%Do = 250mm
%normal eye is 60D, and 
%{
Diopter_Relax       = 60;
Di                  = 1/Diopter_Relax*1000  %mm, the refracted distance inside the eye, ~17mm

Hyperopia_Diopter   = +6; %required glasses diopter, 
CrystalLens_Power   = 8;
Diopter             = Diopter_Relax + CrystalLens_Power - Hyperopia_Diopter;
f                   = 1/Diopter*1000    %focal length of the eye
DoSTAR              = (f*Di)/(Di-f)     %farest point of focusing
%}

