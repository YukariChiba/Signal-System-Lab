% Part3_1.m
% Author: Charles Yang
% Signal&System 1.8(a)(b)(c)

t = sym('t');
x1 = cos(pi*t/5);
x2 = sin(pi*t/5);
x3 = exp(1i*2*pi*t/3)+exp(1i*pi*t);
x3re = real(x3);
x3im = imag(x3);

figure;
subplot(2,2,1);
fplot(x1);xlabel('t');ylabel('x1(t)');grid on;
subplot(2,2,2);
fplot(x2);xlabel('t');ylabel('x2(t)');grid on;
subplot(2,2,3);
fplot(x3re);xlabel('t');ylabel('Re(x3(t))');grid on;
subplot(2,2,4);
fplot(x3im);xlabel('t');ylabel('Im(x3(t))');grid on;

