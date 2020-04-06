function [y]= corrl(x,h)
l1=length(x);
l2=length(h);
l=l1+l2-1;
h1=fliplr(h);

for n=0:l-1
    y(n+1)=0;
    for k=0:l1-1
        if((n-k)>=0 && (n-k)<l2)
            y(n+1)=y(n+1)+(x(k+1)*h1(n-k+1));
        end
    end
end
