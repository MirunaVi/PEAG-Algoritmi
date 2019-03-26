function [ popN ] = pop_gen_m( pop,dim,pc,a )

popN=pop;

for i=1:2:dim-1
    r=unifrnd(0,1);
    if r<pc
        [popN(i,1:3),popN(i+1,1:3)]=aritmetica_totala(popN(i,1:3),popN(i+1,1:3),a);
        popN(i,1:4)=fitness(popN(i,1:3));
        popN(i+1,1:4)=fitness(popN(i+1,1:3));
    end;
end;


end

