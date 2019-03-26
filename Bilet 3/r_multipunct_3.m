function [ c1,c2 ] = r_multipunct_3(p1,p2,nr)
c1=p1;
c2=p2;
poz=zeros(1,nr);
n=length(p1);
for i=1:nr
    gata=0;
    while ~gata
        y=unidrnd(n);
        if ~ismember(y,poz)
            poz(i)=y;
            gata=1;
        end;
    end;
end;
poz=sort(poz);
poz=[poz,n];
disp(poz);
for i=1:2:n
    c1(poz(i):poz(i+1))=p2(poz(i):poz(i+1));
    c2(poz(i):poz(i+1))=p1(poz(i):poz(i+1));
end;   
end

