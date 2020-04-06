function [y]=circ(x,h)
l1=length(x);
l2=length(h);
N=max(l1,l2);
x1=[x zeros(1,N-l1)];
h1=[h zeros(1,N-l2)];

for n=0:N-1
    y(n+1)=0;
    for k=0:N-1
        if ((n-k)<0)
            b=n-k+N;
        else
            b=n-k;
        end
        y(n+1)=y(n+1)+(x1(k+1)*h1(b+1));
    end
end
        