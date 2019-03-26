function [ popN ] = mutatie_inserare( pop, pm )
%MUTATIE_INSERARE permutarea care sufera o mutatie
[dim,n]=size(pop);
popN=pop;
for i=1:dim
    r=unifrnd(0,1);
    if(r<pm)
        disp('Mutatie efectuata in cromozomul'); disp(pop(i,:));
        p=zeros(1,2);
        p(1)=unidrnd(n);
        p(2)=unidrnd(n);
        while(p(1)==p(2)&&p(2)==p(1)+1)
            p(2)=unidrnd(n);
        end;
        poz=sort(p);
        disp('Pozitiile:');
        disp(poz);
        popN(i,1:poz(1))=pop(i,1:poz(1));
        popN(i,poz(1)+1)=pop(i,poz(2));
        popN(i,poz(1)+2:poz(2))=pop(i,poz(1)+1:poz(2)-1);
        popN(i,poz(2)+1:n)=pop(i,poz(2)+1:n);
        disp('Cromozom rezultat');
    end;
end;


end

