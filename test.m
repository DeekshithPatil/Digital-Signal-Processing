fp=input('fp=');
fs=input('fs=');
Fs=input('Fs=');
wp=(2*pi*fp)/Fs;
ws=(2*pi*fs)/Fs;
wt=abs(wp-ws);
wc=wp;
N1=ceil((6.6*pi)/wt);
N=N1+rem(n1-1,2);

%LPF
wc1=wp/pi;
wc2=ws/pi;
wn=hamming(N);
hn1=fir1(N-1,wc2,'high',wn);
hn1
figure(1);
freqz(hn1,1);
