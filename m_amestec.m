function [y] = m_amestec(x,pm)
  %operatorul de mutatie prin amestec
  %I:x-individ,pm-probabilitatea
  %e:y-individul rezultat
  dim=length(x);
  y=x;
  for i=1:dim
      r=unifrnd(0,1);
      if r<pm 
        p=unidrnd(dim,1,2);
        while p(1)==p(2)
            p(2)=unidrnd(dim)
        end;
        p1=min(p);
        p2=max(p);
        %disp([modifica intre'num2str(p1) 'si'num2str(p2)']);
        a=permutare(p2-p1+1);
          for i=p1:p2
                 y(i) = x(p1-1+a(i-p1+1));
          end;
      end;
  end;   

end

