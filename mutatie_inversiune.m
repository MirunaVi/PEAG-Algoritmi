function [ popN ] = mutatie_inversiune( pop, pm )
%MUTATIE_INVERSIUNE presupune selectarea aleatoare a douã gene i si j
%ºi inversarea ordinii în secvenþa dintre cele douã poziþii. 
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
        c=0;
        for j=poz(1):poz(2)
            
            popN(i, j)=pop(i,pop(i,poz(2))-c);
            c=c+1;
        end;    
        disp('Cromozom rezultat');
    end;
end;


end

