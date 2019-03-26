function[popF]=mutatie_populatie(popI,pm)
    popF=popI;
    [dim,n]=size(popI);
    for i=1:dim 
      x=mutatie_resetare_aleatoare(popI(i,1:n-1),pm);
        ok=este_fezabil(x);
        if ok==1
        popF(i,1:2)=x;
        popF(i,3)=fitness(x);
      end;
    end;
end