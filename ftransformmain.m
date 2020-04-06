x=input('x');
N=input('N');
x1=ftrans(x,N);
x1
mag1=abs(x1);
phas1=angle(x1);
figure(1);
n=0:N-1;
plot(n,mag1);
title('Magnitude plot');
xlabel('k');
ylabel('mag of X[k]');
figure(2);
plot(n,phas1);
title('Phase plot');
xlabel('k');
ylabel('phase of X[k]');
x2=fft(x,N);
x2