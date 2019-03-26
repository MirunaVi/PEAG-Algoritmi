function [ popN ] = mutatie_permutare_interschimb( pop, pm )
%MUTATIE_PERMUTARE_INTERSCHIMB 
%E: populatia noua
[dim, n]=size(pop);
popN=pop;
for i=1:dim
    r=unifrnd(0,1);
    if(r<pm)
        %generez un vector de o linie si 2 coloane care reprezinta gena i
        %si j generate aleator
        p=zeros(1,2);
        p(1)=unidrnd(n);
        p(2)=unidrnd(n);
        while(p(1)==p(2))
            p(2)=unidrnd(n);
        end;
        poz=sort(p);
        popN(i,poz(1))=pop(i, poz(2));
        popN(i, poz(2))=pop(i, poz(1));
        disp(popN(i,:));
    end;
end;    


end

