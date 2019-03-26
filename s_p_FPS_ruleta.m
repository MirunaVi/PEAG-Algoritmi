function [parinti]=s_p_FPS_ruleta(pop)
    % selectia parintilor tip ruleta cu probabilitati FPS standard
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
    for k=1:m
        r=unifrnd(0,1);
        i=1;
        while i<m && r>q(i)
            i=i+1;
        end;
        parinti(k,:)=pop(i,:);
    end;
    disp(p);
    disp(q);
end