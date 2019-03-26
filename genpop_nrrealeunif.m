function []=genpop_nrrealeunif(dim, n, pm, a, b, sigma)
% generarea populatiei care sufera mutatie este realizata 
%aleator, uniforma pe [a,b]
pop=zeros(dim,n);
for i=1:dim
    for j=1:n
        pop(i,j)=unifrnd(a,b);
    end;
end;
disp('Populatia initiala');disp(pop);
%aplicarea mutatiei 
popN=mutatie_neunif_reala(pop,pm,a,b,sigma);



end

