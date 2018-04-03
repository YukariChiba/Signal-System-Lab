% Part1.m
% Author: Charles Yang
% Signal&System 2.1(a)(b)(c)
%%
x = ones(1,5)
for i=1:5
    h(1,i) = i
end
y1 = conv(x,x)
y2 = conv(h,x)
subplot(2,1,1)
stem(y1)
subplot(2,1,2)
stem(y2)
