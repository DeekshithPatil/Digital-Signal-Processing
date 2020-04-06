N=input('order of y');
m=input('order of x');
a=input('coeff of y');
b=input('coeff of x');
y=input('initial conditions');
n=0:7;
x=[1,ones(1,length(n)-1)];
x=[zeros(1,m),x];

for n=0:7
    k=0:m;
    l=1:N;
    y(n+N+1)=(sum(b(k+1).*x(n+m-k+1))-sum(a(l+1).*y(n+N-l+1)))/a(1);
end
y
