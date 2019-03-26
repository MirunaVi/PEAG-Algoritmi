function [y] = generare_binara()
x = unidrnd(2^12-1);
y = bitget(x,12);
end