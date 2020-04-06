function [y]=ftrans(x,N)
l1=length(x);
xp=[x zeros(1,N-l1)];
wn=-(j*2*pi/N);

for k=0:N-1
    y(k+1)=0;
    for n=0:N-1
        y(k+1)=y(k+1)+[xp(n+1)*exp(wn*k*n)];
    end
end

    
