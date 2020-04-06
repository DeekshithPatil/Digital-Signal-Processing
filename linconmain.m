x=input('x');
h=input('h');
x1=lc(x,h);
l1=length(x);
l2=length(h);
n=0:(l1+l2-1)-1;
stem(n,x1);