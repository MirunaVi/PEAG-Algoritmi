function [y]=m_inversiune(x,pm)
    % operatorul de mutatie prin inversiune pe permutari
    % I: x - individul (permutarea), pm - probabilitatea de mutatie
    % E: y - individul modificat
    
    y=x;
    r=unifrnd(0,1);
    if r<pm
        n=length(x);
        poz=unidrnd(n,1,2);
        while poz(1)==poz(2)
            poz(2)=unidrnd(n);
        end;
        poz=sort(poz);
        y(poz(1):poz(2))=x(poz(2):-1:poz(1));
    end;
end