function[OK]=este_fezabil(x)
 OK=0;
 if mod(x(1),2)==0
   OK=1;
 end;
 if mod(x(2),2)==0
   OK=1;
 end;
end