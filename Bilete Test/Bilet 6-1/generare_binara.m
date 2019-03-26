function [y] = generare_binara(dim)
x = unidrnd(2^dim - 1);
y = bitget(x,dim:-1:1);
end