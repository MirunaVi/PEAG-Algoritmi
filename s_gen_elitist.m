function [Generatie]=s_gen_elitist(pop, desc)
    % selectarea elitista a generatiei noi 
    % I: pop - populatia curenta, desc - descendentii generati
    %    pe ultima coloana se afla valoarea functiei obiectiv
    % E: Generatie - generatia noua
    
    Generatie=pop;
    [dim,n]=size(pop);
    [max1,i]=max(pop(:,n));
    [max2,j]=max(desc(:,n));
    if max1>max2
        [min1,k]=min(desc(:,n));
        Generatie(k,:)=pop(i,:);
    end;
end