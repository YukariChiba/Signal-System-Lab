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

%% (c)

