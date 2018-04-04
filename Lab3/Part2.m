% Part2.m
% Author: Charles Yang
% Signal&System 2.7(a)(b)(c)(d)(e)
%% (a)(b)
nh = -1:1;
h = [2 0 2];
nx = [0 1 2];
x = [1 0 1];
y = conv(h,x);
ny = -1:3;
figure;
stem(ny,y);xlabel('n');ylabel('y[n]');
%% (c)
nx = 0:24;
nh = 0:14;
for i=1:length(nx)
    if nx(i)-2 > 0
        u = nx(i)-2;
    else
        u = 0;
    end
    x(i)=(1/2)^(nx(i)-2)*u;
end
if nh+2 > 0
    h = nh+2;
else
    h = 0;
end
y=conv(h,x);
ny=[0:38];
figure;
stem(ny,y);xlabel('n');ylabel('y[n]');
hold on;
stem(ny(16:length(ny)),y(16:length(y)),'r');

%% (d)
clear;clc;
for i=0:99
    x(i+1)=cos(i^2)*sin(2*pi*i/5);
    if i<10,h(i+1)=0.9^i;
    else h(i+1)=0;
    end
end
y=conv(h,x);
ny=[0:99];
stem(ny,y(1:100));grid on;title('y');

%% (e)
clear;clc;
for i=0:99
    x(i+1)=cos(i^2)*sin(2*pi*i/5);
    if i<10,h(i+1)=0.9^i;
    else h(i+1)=0;
    end
end
x0=x(1:50);x1=x(51:100);
y0=conv(h,x0);
y1=conv(h,x1);
k=99;
for i=1:50,y(i)=y0(i);end 
for i=51:149,y(i)=y0(i)+y1(i+49-k);end
for i=150:199,y(i)=y1(i+49-145);end
ny=[0:99];
stem(ny,y(1:100));grid on;title('conv');
