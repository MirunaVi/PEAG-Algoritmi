function[q]=fitness(x)
 q=0;
 n=length(x);
  for i=1:n-1
    for j=i+1:n
      if x(i)==j && x(j)==i
        q=q+1;
      end;
    end;
  end