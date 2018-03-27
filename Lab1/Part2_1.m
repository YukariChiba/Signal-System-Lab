% Part2_1.m
% Author: Charles Yang
% Signal&System 1.3(a)

n = (-3 : 7);
x = zeros(1,11);
x(4) = 2;
x(6:8) = [1,-1,3];
figure
stem(n,x);title('n(x) and x');xlabel('x');ylabel('n(x)');
