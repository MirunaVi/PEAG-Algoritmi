function [ady, c]= mutatie_binara( ionel, pm )
%MUTATIE_BINARA; mutatie asupra unui individ reprezentat binar
%   I: individ(ionel), probab de mutatie(pm)
%   E: noul individ(ady)
ady=ionel;
[l, m]=size(ionel);
c=0;
 for i=1:m
    r=unifrnd(0,1);% o valoare in intervalul 0, 1
    if (r<pm) %se aplica mutatia
        ady(i)= ~ady(i);% sau ~ in loc de not
        c=c+1;
    end;
 end;




end

