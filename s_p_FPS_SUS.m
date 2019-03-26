function [parinti]=s_p_FPS_SUS(pop)
    % selectia parintilor tip SUS cu probabilitati FPS standard
    % I: pop - populatia curenta, pe ultima coloana e val. fct. obiectiv
    % E: parinti - parintii selectati
    
    [m,n]=size(pop);
    p=zeros(1,m);
    p(1:m)=pop(1:m,n);
    s=sum(p);
    p(1:m)=p(1:m)/s;
    q=zeros(1,m);
    for i=1:m
        q(i)=sum(p(1:i));
    end;
    parinti=zeros(m,n);
    i=1;
    k=1;
    r=unifrnd(0,1/m);
    while(k<=m)
        while(r<=q(i))
            parinti(k,1:n)=pop(i,1:n);
            r=r+1/m;
            k=k+1;
        end;
    i=i+1;
    end;
end
