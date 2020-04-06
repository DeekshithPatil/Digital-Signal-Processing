x=input('x');
h=input('h');
x1=corrl(x,h);
x3=conv(x,h);
x1

%auto correlation properties
%center value
%e1=sum(x.^2);
%m=length(x1);
%if(e1==x1(ceil(m/2)))
  %  disp('mid prop');
%end
%x2=fliplr(x1);
%if (x1==x2)
%    disp('symmetric');
%end

%Correlation Properties
x4=corrl(h,x);
x5=fliplr(x4);
if(x1==x5)
    disp('Property Satisfied');
end

