function [ popNoua ] = mutatie_neunif_reala( pop, pm, a, b, sigma)
%MUTATIE_NEUNIF_REALA Summary of this function goes here
%   E:populatia noua
[dim, n]=size(pop);
popNoua=pop;
for i=1:dim
    c=0;
    for j=1:n
        r=unifrnd(0,1);
        if(r<pm)
            x=normrnd(0, sigma);%x=generat normal cu medie0 si
            %deviatie sigma
            popNoua(i, j)=pop(i, j)+x;
            if(popNoua(i,j)<a)
                popNoua(i,j)=a;
            else
                if(popNoua(i,j)>b)
                    popNoua(i,j)=b;
                end;
            end;
            c=1;
        end;
    end;
if(c)
    disp(popNoua(i,:));
end;    
end;

end

