fp1=input('fp1=');
fp2=input('fp2=');
Fs=input('Fs=');
wp1=(2*pi*fp1)/Fs;
wp2=(2*pi*fp2)/Fs;
wt=abs(wp1-wp2);
wc1=wp1;
wc2=wp2;
N1=ceil((6.6*pi)/wt);
N=N1+rem(N1-1,2);

%LPF
n=0:N-1;
a=(N-1)/2;
hdn=((sin(wp2*(n-a))-sin(wp1*(n-a)))./(pi*(n-a)));
hdn(a+1)=(wp2-wp1)/pi;
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