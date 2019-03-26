function [pop] = generare_populatie(dim, n)
pop = zeros(dim,n+1);
for i = 1:dim
    x = generare_binara(n);
    if este_fezabil(x) == 0
        while este_fezabil(x) == 0
            x = generare_binara(n);
        end;
    end;
    pop(i,1:n) = x;
    pop(i,n+1) = fitness(x);
end;
end