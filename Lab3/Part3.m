% Part3.m
% Author: Charles Yang
% Signal&System 2.4(a)(d)
%%
nx1 = 0:9;
x1 = [1 1 1 1 1 0 0 0 0 0];
h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];
nh1 = 0:4;
figure;
subplot(3,1,1);
stem(nx1,x1);
subplot(3,1,2);
stem(nh1,h1);
subplot(3,1,3);
stem(nh1,h2);
%%
close all;
w=conv(x1,h1);
yd1=conv(w,h2);
hs=conv(h1,h2);
yd2=conv(x1,hs);
subplot(2,1,1);
stem(0:length(yd1)-1,yd1);xlabel('n');ylabel('(x1[n]*h1[n])*h2[n]');
subplot(2,1,2);
stem(0:length(yd2)-1,yd2);xlabel('n');ylabel('x1[n]*(h1[n]*h2[n])');