function [ c1,c2 ] = aritmetica_totala(p1,p2,a)
c1=p1;
c2=p2;
n=length(p1);
c1(1:n)=a*p1(1:n)+(1-a)*p2(1:n);
c2(1:n)=a*p2(1:n)+(1-a)*p1(1:n);

end

