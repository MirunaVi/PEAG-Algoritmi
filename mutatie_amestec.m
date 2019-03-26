function [ popN ] = mutatie_amestec( pop, pm )
%MUTATIE_AMESTEC 
[dim,n]=size(pop);
popN=pop;
for i=1:dim
    r=unifrnd(0,1);
    if(r<pm)
        disp('Mutatie efectuata in cromozomul'); disp(pop(i,:));
        p=zeros(1,2);
        p(1)=unidrnd(n);
        p(2)=unidrnd(n);
        while(p(1)==p(2))
            p(2)=unidrnd(n);
        end;
        poz=sort(p);
        disp('Pozitiile:');
        disp(poz);
        x=zeros(dim, n);
        x=unidrnd(poz(2)-poz(1),poz(1), poz(2))-1;
        unidrnd(poz(1), poz(2), 1, n);
        disp('Cromozom rezultat');disp(popN(i,:));
    end;
end;


end

