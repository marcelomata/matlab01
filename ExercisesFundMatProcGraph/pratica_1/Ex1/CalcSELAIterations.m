function F = calcSeidelIteractions(M, A, x0, x, b, max)
    iterations = 0;
    x0 = (M-A)*x+b;
    while iterations < max 
        iterations = iterations + 1;
        x0 = (M-A)*x0+b;
        x0
    end
    F = x0;
end