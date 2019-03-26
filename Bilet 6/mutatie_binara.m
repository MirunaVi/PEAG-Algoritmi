function [y] = mutatie_binara(x, pm)
    y=x;
    n = length(x);
    for i = 1:n
        r = unifrnd(0,1);
        if r < pm
            y(i) =~ y(i);
        end;
    end;
end