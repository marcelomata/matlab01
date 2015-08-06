%Theversion requires that instead of the original #views, the boundaries 
% now also consider the neighboring pixels(extra pixels)
% Now extends to (XtraPix-1)/2 neghbors, e.g. 5 total macro pixels
% <left 2 pixs>  <orig>  <right 2 pixs>
function BVals = Angular_BoundaryExt2(nView, SPP, Depth, XtraPix)
if(mod(nView, 2) == 0)   %even number of views, so #boundaries == #view+1
    for(i = 1:nView*XtraPix/2)%omit the center 0 here   
        BVals(i,1) = atan(  SPP*i/Depth  )/pi*180; 
    end    
    BVals = [-flipud(BVals); 0; BVals] ;
else    %odd number of views, so boundary == #view+1
    for(i = 1:floor((nView - 1)/2) + 1 + nView*(XtraPix-1)/2)
        BVals(i,1) = atan( (SPP/2 + SPP*(i-1))/Depth  )/pi*180;
    end
    BVals = [-flipud(BVals); BVals] ;
end

if(nView == 1)
    BVals = [-90; 90];
end