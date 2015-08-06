
%type = 'myopia';
type = 'hyperopia';

%Average pupil,pupil size changes between 2mm~7mm
% Brightn: 3-5mm,  Dark: 4-9mm
Camera.Aperture            = 5 %mm ;  %why previously 12mm works?
%Note Di for human eye is approximately 22.7 ~ 24 mm
% because the refractive index inside the eye 
% is about 1.336, so 22.7mm/1.336 ~= 17mm = 1/60 for the relaxed eye
Diopter_Relax               = 60;
Camera.Di                  = 1/Diopter_Relax*1000  %mm, the refracted distance inside the eye, ~17mm


if( strcmp(type, 'myopia'))
    %Think about adding for both myopia and hyperopia, 
    %Now consider myopia
    %Myopia_Diopter      = -0.00;
    Myopia_Diopter      = -3.00; %require -3 Diopter glasses          
    Diopter             = Diopter_Relax - Myopia_Diopter
    Camera.f                   = 1/Diopter*1000    %focal length of the eye
    Camera.DoSTAR              = (Camera.f*Camera.Di)/(Camera.Di-Camera.f)     %farest point of focusing
    if(Do < DoSTAR)
        disp('no correction needed');
        %return
    end
elseif(strcmp(type, 'hyperopia'))
    %Now consider hyperopia
    %Hyperopia_Diopter   = +5;
    Hyperopia_Diopter   = +5.775; %required glasses diopter, 
    CrystalLens_Power   = 8;   %this number depends on ages, eg. 50yr is merely 2D
    Diopter             = Diopter_Relax + CrystalLens_Power - Hyperopia_Diopter;
    Camera.f                   = 1/Diopter*1000    %focal length of the eye
    Camera.DoSTAR              = (Camera.f*Camera.Di)/(Camera.Di-Camera.f)     %farest point of focusing
    if(Do > Camera.DoSTAR)
        disp('no correction needed');
        %return
    end
end



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
