% Part1.m
% Author: Charles Yang
% Signal&System 7.1(a)(b)(c)(d)
%% (a)(b)
N=8192;
T=1/N;
n=0:N-1;
t=n*T;
cps0=1000;
ohm0=2*pi*cps0;
x=sin(ohm0*t);
figure;
subplot(211)
stem(n(1:50),x(1:50));
subplot(212)
plot(t(1:50),x(1:50));
%% (c)
[X,f]=ctfts(x,T);
Xr=roff(X);
figure;
subplot(211)
plot(f,abs(Xr));
subplot(212)
plot(f,angle(Xr));
%% (d)
cps1=1500;
ohm1=2*pi*cps1;
x1=sin(ohm1*t);
[X1,~]=ctfts(x1,T);
X1r=roff(X1);
cps2=2000;
ohm2=2*pi*cps2;
x2=sin(ohm2*t);
[X2,f]=ctfts(x2,T);
X2r=roff(X2);
figure;
subplot(211);stem(n(1:50),x1(1:50));
subplot(212);stem(n(1:50),x2(1:50));
figure;
subplot(221);plot(f,abs(X1r));
subplot(222);plot(f,angle(X1r));
subplot(223);plot(f,abs(X2r));
subplot(224);plot(f,angle(X2r));
%% Round Function
function ro=roff(x)
n=4;
N=10^n;
ro=(round(x*N))/N;
end