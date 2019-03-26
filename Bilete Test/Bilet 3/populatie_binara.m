function [pop] = populatie_binara(dim)
pop = zeros(dim, 13);
for i = 1:dim
    x = generare_binara();
    pop(i,1:12) = x;
    pop(i,13) = funct_ob(x);
end;
end