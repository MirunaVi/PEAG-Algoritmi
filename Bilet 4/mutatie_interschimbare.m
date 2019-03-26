function[y]=mutatie_interschimbare(x,pm)
y=x;
n=length(x);
r=unifrnd(0,1);
  if r<pm
   i=0;
   j=0;
   while i==j
     poz=unidrnd(n,1,2);
     i=min(poz);
     j=max(poz);
   end;
   y(i)=x(j);
   y(j)=x(i);
 end;
 end