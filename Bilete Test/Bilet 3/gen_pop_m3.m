function [y] = gen_pop_m3(x,dim,pr )
y=x;

for i=1:2:dim-1
    r=unifrnd(0,1);
    if r<pr
       [ y(i,1:12),y(i+1,1:12)]=r_multipunct_3(x(i,1:12),x(i+1,1:12),3);
        y(i,13)=fitness3(y(i,1:12));
        y(i+1,13)=fitness3(y(i+1,1:12));
    end;
end;


end

