function [f] = fitness(x)
f = 1 + sin(2 * x(1) - x(3)) + x(2);
end