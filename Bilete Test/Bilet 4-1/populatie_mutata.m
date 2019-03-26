function [popF]=populatie_mutata(popI,pm)
  popF=popI;
  [dim,n]=size(popI);
  for i=1:dim
    x=mutatie_interschimbare(popI(i,1:n-1),pm);
    popF(i,1:n-1)=x;
    popF(i,n)=fitness(x);
  end;
  end