function [y]= lc(x,h)
l1=length(x);
l2=length(h);
l=l1+l2-1;

for n=0:l-1
    y(n+1)=0;
    for k=0:l1-1
        if((n-k)>=0 && (n-k)<l2)
            y(n+1)=y(n+1)+(x(k+1)*h(n-k+1));
        end
    end
end
