clc;
clear all;
fs=42;
ts=1/42;
f=5;
t=-1:ts:1-ts;
x=sin(pi*t*f)./(pi*t*f);
x(fs+1)=1;
figure(1);
plot(x);
y=fft(x);
N=length(y);
fr=(0:N-1)*fs/N;
figure(2);
plot(fr,abs(fftshift(y)));