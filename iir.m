fp=input('enter pass band freq');
fs=input('enter stop band freq');
ap=input('ap');
as=input('as');
op=fp;
os=fs;
[N,wc]=buttord(op,os,ap,as,'s');
disp(wc);
disp(N);
[num,den]=butter(N,wc,'low','s');
freqs(num,den);