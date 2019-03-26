function [parinti]=s_p_turneu(pop,k)
    % selectia parintilor de tip turneu
    % I: pop - populatia curenta, k - numarul de participanti la turneu
    %    pe ultima coloana se afla valoarea functiei obiectiv
    % E: parinti - parintii selectati
    
    [m,n]=size(pop);
    parinti=zeros(m,n);
    turneu=zeros(k,n);
    for i=1:m
        for j=1:k
            t=unidrnd(m);
            turneu(j,:)=pop(t,:);
        end;
        [~,p]=max(turneu(:,n));
        parinti(i,:)=turneu(p,:);
    end;
end