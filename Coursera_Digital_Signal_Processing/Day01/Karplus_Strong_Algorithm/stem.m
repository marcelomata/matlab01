%% stem(X, Y, par)
%%
%% Creates a stem plot of Y against X. It is assumed 
%% that X and Y are 1-D vectors (either rows or columns).
%%
%% EXAMPLE:
%%
%% --> t = 0:.2:2*pi;
%% --> stem(t, sin(t));
function [A] = stem(X, Y, par) 
    n = nargin; 
    para = 'sb'; 
    parb = '-b'; 
    if(n == 1) 
        Y = linspace(0,size(X,2)-1,size(X,2)); 
    elseif(n == 2) 
        if(isa(Y, 'char')) 
            [para, parb] = processLineSpec(Y); 
            Y = linspace(0,size(X,2)-1,size(X,2)); 
        end 
    elseif(n == 3) 
       [para, parb] = processLineSpec(par); 
    end 

    % assume both X and Y are 1-D vectors and make them into rows
    X = X(:)';
    Y = Y(:)';

    plot(X, Y, para); 
    hold on; 

    for i = 1:size(Y,2) 
        if Y(i)>0
            plot([X(i) X(i)], [0 Y(i)], parb); 
        else
            plot([X(i) X(i)], [Y(i) 0], parb);
        end
    end 
    hold off;  
end 


function [A,B] = processLineSpec(lis); 
    n = strfind(lis, '-.'); 
    lis(n+1) = ';'; 
    B = lis(find(lis~='.'&lis~='o'&lis~='x'&lis~='+'&lis~='*'&lis~='s'&lis~='d'&lis~='v'&lis~='^'&lis~='>'&lis~='<')); 
    A = lis(find(lis~='-'&lis~=':'&lis~=';')); 
    n = strfind(B, ';'); 
    B(n) = '.'; 
end
    
