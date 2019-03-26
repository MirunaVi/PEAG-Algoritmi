function pop = generare_populatie(dim)
    pop = zeros(dim, 4);
    for i = 1:dim
        x = gen_individ();
        pop(i,1:3) = x;
        pop(i,4) = fitness(x);
    end;
end