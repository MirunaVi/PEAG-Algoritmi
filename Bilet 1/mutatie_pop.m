function [pop_mut] = mutatie_pop(pop, dim, t, pm)
    pop_mut = pop;
    for i=1:dim
        [pop_mut(i,1), mutat(1)] = mutatie_fluaj(pop(i,1),-1,1,t,pm);
        [pop_mut(i,2), mutat(2)] = mutatie_fluaj(pop(i,2),0,0.2,t,pm);
        [pop_mut(i,3), mutat(3)] = mutatie_fluaj(pop(i,3),-2,1,t,pm);
        [pop_mut(i,4), mutat(4)] = mutatie_fluaj(pop(i,4),0,9,t,pm);
        
        if sum(mutat) > 0
            if este_fezabil(pop_mut(i,1:4))
                pop_mut(i,5) = func_ob(pop_mut(i,1:4));
            else
                pop_mut(i) = pop(i);
            end;
        end;
    end;
end