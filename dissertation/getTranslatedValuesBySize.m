function [ YT ] = getTranslatedValuesBySize( Y )
    
    sizeY = size(Y);
    translate = ones(sizeY(1), sizeY(2));
    X = (Y(:, 1) < 0).*-1.*Y(:, 1) + (Y(:, 1) > 0).*0;
    for i=1:31
        translate(:, i) = X(:,1);
    end
    
    YT(:, :) = Y(:, :) + translate(:, :);
end

