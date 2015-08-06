function  x  =  findallzeros( fhandle, xguess, maxroots)
%
%    x = findallzeros( fhandle, xguess, maxroots)
%   ==================================
%
%   attemps to find multiple roots of a function.
%
%  fhandle = function handle, prefix by @
%  xguess = a scalar value used as initial guess
%           ( = 0   if not supplied )
% maxroots = the number of roots needed
%           ( = 1   if not supplied )

%   (c) 2005 by Tomas Co
%   @ Michigan Technological University

    x   = [ ]                ;
    
    if nargin==1
        xguess =0;
        maxroots = 1;
    end
    
    if nargin==2
        maxroots  = 1;
    end

    nroots = 0;
    
    while nroots<maxroots
        if  abs(feval(fhandle,xguess,[ ]))<=1e-16,
            xroot=xguess;
        else
            [xroot,val,flag] = fzero(fhandle,xguess,[ ],x);
            if flag <= 0
                return
            end
        end
        x=[x,xroot];
        nroots=nroots+1;
        xguess=xguess+0.1;
    end