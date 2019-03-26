function [y] = n_fluaj_R(x,pm,a,b,disp)
  %operatul de fluaj prin reprezentarea prin numere realae
  %I:x-individ,cromozon,pm-prob de mutatie,a,b-capetele,interval,disp-disp
  %val de fluaj
  %e:y-individul rezultat
  dim=length(x);
  y=x;
  for i=1:dim
      R=unifrnd(0,1);
      if R < pm 
        y(i)=x(i) + normrnd(0,disp);
        if (y(i)>b)
            y(i)=b;
        end;
        if y(i) < a
            y(i) = a;
        end;
      end;
  end;   

end

