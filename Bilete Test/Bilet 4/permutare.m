function[p]=permutare(dim)
  p=zeros(1,dim);
  for i=1:dim
    gata=0;
    while ~gata
      x=unidrnd(dim);
      if ~ismember(x,p)
        p(i)=x;
        gata=1;
      end;
   end;
 end