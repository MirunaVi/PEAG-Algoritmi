function [ady, c] = mutatie_intregi( ionica, pm, M, N )
%MUTATIE_INTREGI : mutatie asupra unui individ reprezentat pe nr intregi,
%prin resetare aleatoare
%    I: individ(ionica), probab de mutatie(pm)
%   E: noul individ(ady), nr de gene(c)
[l, m]=size(ionica);
ady=ionica;
c=0;
 for i=1:m
    x=unifrnd(0, 1);% o valoare in intervalul 0, 1
    if (x<pm) %se aplica mutatia
          % este generat aleator un numar intreg intre M si N:
            % genereaza aleator un numar R intre 1 si N-M+1            
            % aduna la R valoarea M-1 
            disp(i);
            ady(i)=M-1+unidrnd(N-M+1);
        c=c+1;
    end;
 end;
if(c)
        disp('Cromozom rezultat');disp(ady);

 
end

