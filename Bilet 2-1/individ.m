function[y]=individ()
  
      y=zeros(1,2);
      y(1)=unifrnd(1,350);
      y(2)=unifrnd(-3,180);
      if mod(y(1),2) == 1
        while mod(y(1),2) == 1
        y(1)=unifrnd(350);
        end;
      end;
      end