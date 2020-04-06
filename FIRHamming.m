fp=input('fp=');
fs=input('fs=');
Fs=input('Fs=');
wp=(2*pi*fp)/Fs;
ws=(2*pi*fs)/Fs;
wt=abs(ws-wp);
wc=wp;
N1=ceil((6.6*pi)/wt);
N=N1+rem(n1-1,2);

%LPF
n=0:N-1;
a=(N-1)/2;
hdn=-sin(wc*(n-a))./(pi*(n-a));
hdn(a+1)=1-wc/pi;
wn=0.54-(0.46*cos((2*pi*n)/(N-1)));
hn=hdn.*wn;
hn

%Plot
figure(1);
stem(n,hn);
hw=fftshift(fft(hn));
w=linspace(-pi,pi,N);
maghw=20*log10(abs(hw));
anghw=angle(hw);
figure(2);
plot(w/pi,maghw);
title('magnitude plot');
figure(3);
plot(w/pi,anghw);
figure(4);
zplane(hn,1);
figure(5);
%freqz(hn,1,512);
freqz(hn,1);