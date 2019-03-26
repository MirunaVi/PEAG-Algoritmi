function[pop]=generare_populatie(dim,n)
 pop=zeros(dim,n+1);
      for i=1:dim
        x=permutare(n);
        pop(i,1:n)=x;
        pop(i,n+1)=fitness(x);
      end;
      end