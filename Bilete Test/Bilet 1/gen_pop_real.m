function pop = gen_pop_real(dim)
pop = zeros(dim,5);
i = 1;
while(i<=dim)
    ind = gen_individ_real();
        if este_fezabil(ind)
            pop(i,1:4) = ind;
            pop(i,5) = func_ob(ind);
            i = i + 1;
        end;
    end;
end