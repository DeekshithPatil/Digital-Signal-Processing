x=input('x ');
h=input('h');
N=input('N');

%m=input('shift value');

x1=fft(x,N);
x2=fft(h,N);
x1
x2



%Property 2- circular time shift
%k=0:N-1;
%x6=exp(-(1i*2*pi*k*m/N)).*x1;
%x6
%x7=[x((end-m+1):end) x(1:(end-m))];
%x8=fft(x7,N);
%x8
%if (x6==x8)
 %   disp('cricular time shift satisfied');
%else
 %   disp('cricular time shift satisfied');
%end

%property-3 circular frequency shift
%n=0:N-1;
%x9=exp(j*pi*2*n*m/N).*x;
%x10=fft(x9,N);
%x10
%x11=[x1(end-m+1:end) x1(1:end-m)];
%if(x10==x11)
   % disp('cricular freq shift satisfied');
%else
    %disp('cricular freq shift satisfied');
%end

%Property 4-circular time reversal

%x12=[x(1) x(fliplr(2:end))];
%x13=fft(x12,N);
%x14=[x1(1) x1(fliplr(2:end))];
%x14

%if(x14==x13)
   %disp('cricular time reversal satisfied');
%else
  %  disp('cricular time reversal not satisfied');
%end

%Property5- Circular convoltuion
%x15= cconv(x,h,N);
%x16=fft(x15,N);
%x16
%x17=x1.*x2;
%x17
%if(x16==x17)
  % disp('cricular convolution satisfied');
%else
  % disp('cricular convolution not satisfied');
%end

%Property6- Time domain multiplication
%x18=x.*h;
%x19=fft(x18,N);
%x19
%x20= (1/N).*cconv(x1,x2,N);
%if(x19==x20)
   %disp('Time domain multiplication satisfied');
%else
   %disp('Time domain multiplication not satisfied');
%end

%Property 7- Complex conjugate
%x21=conj(x);
%x22=fft(x21,N);
%x23=[x1(1) fliplr(x1(2:end))];
%x24=conj(x23);
%if(x22==x24)
  % disp('conjugate symmetry satisfied');
%else
   %disp('conjugate symmetry not satisfied');
%end

%Property 8- Parsevals theorem
x25=sum(x.*conj(h))
%x26=fft(x25,N);
x27=(1/N).*sum(x1.*conj(x2))
if(x25==x27)
    disp('Parsevals Theorem satisfied');
else
    disp('Parsevals Theorem not satisfied');
end

