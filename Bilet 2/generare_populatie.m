function [pop]=generare_populatie(dim)
  pop=zeros(dim,3);
  for i=1:dim 
    x=individ();
    pop(i,1:2)= x;
    pop(i,3)=fitness(x);
  end;
  end