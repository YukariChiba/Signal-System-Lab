% Part2.m
% Author: Charles Yang
% Signal&System 2.3(a)(b)
%% (a)
a = [1 2];
b = 1;
x = [zeros(1,4) ones(1,17)];
t = 0:0.5:10;
s = lsim(b, a, x, t);
figure;
plot(t, s, 'b--');
%% (b)
a = [1 0.5];
s = step(b, a, t);
h = impulse(b, a, t);
figure;
subplot(211);plot(t,s);
subplot(212);plot(t,h);