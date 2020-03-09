function [g, h] = constraints(x)
    g(1) = 10 - sqrt((x(1)+5)^2 + (x(2)-10)^2);
    g(2) = 10 - sqrt((x(1)-5)^2 + x(2)^2);
    h = [];
end