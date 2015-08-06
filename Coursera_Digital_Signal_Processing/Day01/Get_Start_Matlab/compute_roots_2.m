function [root1, root2] = compute_roots_2(x)
    a = x(1);
    b = x(2);
    c = x(3);
    delta = b^2 - 4*a*c;
    root1 = (-b + sqrt(delta))/2*a;
    root2 = (-b - sqrt(delta))/2*a;
return

