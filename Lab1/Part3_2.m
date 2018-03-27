% Part3_2.m
% Author: Charles Yang
% Signal&System 1.8(d)(e)(f)

t = sym('t');
x1 = cos(pi*t/5);
x2 = sin(pi*t/5);
x3 = exp(1i*2*pi*t/3)+exp(1i*pi*t);
x3re = real(x3);
x3im = imag(x3);
e1=int(abs(x1).^2,-t,t);
e2=int(abs(x2).^2,-t,t);
e3=int((x3re+x3im.*1i).*(x3re-x3im.*1i),-t,t);
p1=e1/t;
p2=e2/t;
p3=e3/t;
figure;
subplot(3,1,1);
fplot(e1,[0,30]);xlabel('t');ylabel('e1(t)');grid on;
subplot(3,1,2);
fplot(e2,[0,30]);xlabel('t');ylabel('e2(t)');grid on;
subplot(3,1,3);
fplot(e3,[0,30]);xlabel('t');ylabel('e3(t)');grid on;
figure;
subplot(3,1,1);
fplot(p1,[0.1,60]);xlabel('t');ylabel('p1(t)');grid on;
subplot(3,1,2);
fplot(p2,[0.1,60]);xlabel('t');ylabel('p2(t)');grid on;
subplot(3,1,3);
fplot(p3,[0.1,60]);xlabel('t');ylabel('p3(t)');grid on;

simplify(p1)
simplify(p2)
simplify(p3)