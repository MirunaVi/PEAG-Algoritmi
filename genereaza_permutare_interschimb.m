function [x]=genereaza_permutare_interschimb(N)
x=zeros(1,N);
for i=1:N
    gata=0;
    while(~gata)
        v=unidrnd(N);
        if(~ismember(v,x))
            x(i)=v;
            gata=1;
        end;
    end;
end;
disp(x);


end





