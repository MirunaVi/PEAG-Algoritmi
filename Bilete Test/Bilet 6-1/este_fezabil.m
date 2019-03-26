function [ok] = este_fezabil(x)
    ok = 0;
    nr = 0;
    n = length(x);
    for i = 1:n
        if x(i) == 1
            nr = nr + 1;
        end;
    end;
    if mod(nr, 2) == 1 && x(1) ~= x(n)
        ok = 1;
    end;
end