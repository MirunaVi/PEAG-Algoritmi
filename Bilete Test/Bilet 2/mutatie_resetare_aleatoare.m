function [y]=mutatie_resetare_aleatoare(x,pm)
  y=x;
  n=length(x);
    r1=unifrnd(0,1);
    if r1<pm
      y(1)=unifrnd(350);
    end;
    r2=unifrnd(0,1);
    if r2<pm
      y(2)=unifrnd(184)-4;
    end;
   end
   