
% C: 
%A = COND ? X : Y;
% MATLAB
% A, X and Y are numerics 
% COND is a logical condition.

A = COND.*X + (~COND).*Y ;


%//////////////////


a(a > 5) = 2;

b = a > 5; % if a = [9,3,5,6], b = [1,0,0,1]
a(~b) = 3;
c = a > 10;
a(b&c) = ...
    

%//////////////////


A = bsxfun( @times, COND', X ) +  bsxfun( @times, ~COND', Y );