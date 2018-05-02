% Part1.m
% Author: Charles Yang
% Signal&System 3.2 (a)(b)(c)
%% (a)
a=[1 -0.8];
b=[2 0 -1];
%% (b)(c)
[h1, omega1]=freqz(b,a,4);
[h2, omega2]=freqz(b,a,4,'whole');
disp(omega1);disp(omega2);