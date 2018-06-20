% Part2.m
% Author: Charles Yang
% Signal&System 10.1 (a)(b)
%% (a)
zero = [1 -1 0];
pole = [1 3 2];
dpzplot(zero,pole);
%% (b)
zero = 1;
pole = [1 1 0.5];
dpzplot(zero,pole);