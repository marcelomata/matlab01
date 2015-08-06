%desired separation between pinhole mask and the display panel
%now I have to spacer, 0.08"(thicker one), and 1/16"(thinner one)
%Depth               = 300/4*78*0.001 %the dist. between pinhole and mask
%Depth = 0.08*25.4 + 1.0
Display.Depth = 4.064 + 1.45; %

%Light field angular raesolution, 1 means Lambertian, just for testing.
Display.Angular_Res         = 5;    % view-tradeoff in the iPod touch 4 prototype
Display.Angular_HRes        = Display.Angular_Res;    %just 1 becasue I use 1 lenticular sheet only
Display.Angular_VRes        = Display.Angular_Res;    %use 5, though you willl lose 2 views
Display.Screen_Pixel_Pitch  = 78*0.001; % iPod Touch(iPhoone 4), 326PPI ==> 0.0779 mm
Display.Screen_Pitch        = Display.Angular_Res*Display.Screen_Pixel_Pitch; %macro pixel
Display.Padding             = 12;
Display.Screen_Pixels       = 128;
Display.Screen_Res          = (Display.Screen_Pixels+Display.Padding);
Display.Screen_Size         = Display.Screen_Res*Display.Screen_Pitch;
Display.Screen_Sampling     = zeros(Display.Screen_Res,1);  %the pixel grid location
S                           = linspace(-Display.Screen_Size/2, Display.Screen_Size/2, Display.Screen_Res+1); %4 grid == 5 boundary
for(i = 1:length(S)-1)
    Display.Screen_Sampling(i) = (S(i) + S(i+1))/2;
end
