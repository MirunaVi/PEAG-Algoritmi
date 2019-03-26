function [popf] = populatie_mutata(popI,pm)
popf = popI;
[dim,n] = size(popI);
for i = 1 : dim
    x = mutatie_binara(popI(i,1:n-1),pm);
    if este_fezabil(x) == 1
        popf(i,1:n-1) = x;
        popf(i,n) = fitness(x);
    end;
end;
end