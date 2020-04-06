f1=input('f1');
f2=input('f2');
fnyq=2*max(f1,f2);

%undersampling
fs=fnyq*2;
t=0:1/fs:0.1;
x=cos(2*pi*f1*t)+cos(2*pi*f2*t);
xk=fft(x);
n1=length(xk);
f=(0:n1-1)*fs/n1;
figure(1);
plot(f,abs(xk));
xlabel('frequency');
ylabel('amplitude');
title('under sampling');