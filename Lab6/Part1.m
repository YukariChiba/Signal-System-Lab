% Part1.m
% Author: Charles Yang
% Signal&System 4.3(b)(c)(d)(e)(f)
%% (b)
load splat;
y=y(1:8192);
fs=8192;
Y=fftshift(fft(y));
Y1=conj(Y);
y1=ifft(fftshift(Y1));
subplot(211);plot(y);sound(y,fs);
pause(2);
subplot(212);plot(real(y1));sound(y1,fs);
%% (d)
load splat;
y=y(1:8192);
fs=8192;
Y=fftshift(fft(y));
Y2=abs(Y);
y2=ifft(fftshift(Y2));
subplot(211);plot(y);sound(y,fs);
pause(2);
subplot(212);plot(abs(y2));sound(y2,fs);
%% (e)
load splat;
y=y(1:8192);
N=8192;
fs=8192;
Y=fftshift(fft(y));
w1=linspace(-pi*fs,pi*fs,N);
Y3=1*exp(1j*angle(Y));
y3=ifft(fftshift(Y3));
subplot(211);plot(w1,angle(Y));sound(y,fs);
pause(2);
subplot(212);plot(w1,angle(y3));sound(abs(y3),fs);
