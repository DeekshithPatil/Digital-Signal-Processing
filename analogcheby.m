fp=input('enter pass band freq');
fs=input('enter stop band freq');
ap=input('ap');
as=input('as');
op=2*pi*fp;
os=2*pi*fs;
[N,wc]=cheb1ord(op,os,ap,as,'s');
N
wc
[num,den]=cheby1(N,ap,wc,'low','s');
freqs(num,den);