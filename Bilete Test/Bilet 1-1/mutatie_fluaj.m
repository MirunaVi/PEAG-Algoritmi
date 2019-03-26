function [rezultat, mutatie] = mutatie_fluaj(alela, min, max, t, pm)
    mutatie = 0;
    rezultat = alela;
    
    r = unifrnd(0,1);
    if r < pm
        q = normrnd(0, t/3);
        rezultat = alela + q;
        if rezultat < min
            rezultat = min;
        end;
        if rezultat > max
            rezultat = max;
        end;
        mutatie = 1;
    end;
    
end