% Part2.m
% Author: Charles Yang
% Signal&System 1.4(a)(b)(c)(f)

%(a)
figure;
subplot(2,1,1);
n = [-1 0 1];
x1 = [0 1 0];
y1 = sin((pi/2)*x1);
stem(n,y1);
xlabel("n");
ylabel("y1[n]")
subplot(2,1,2);
x2 = [0 2 0];
y2 = sin((pi/2)*x2);
stem(n,y2);
xlabel("n");
ylabel("y2[n]")
%(b)
size = 10;
x = [zeros(size,1)' ones(size+1,1)'];
y = zeros(length(x)- 1);
for i = 1 : length(x)- 1
    y(i) = x(i) + x(i+1);
end
figure;
subplot(2,1,1);
stem(-5 : 9, x(size-4 : size+10))
xlabel("n");
ylabel("x[n](-5:9)")
subplot(2,1,2);
stem(-6 : 9, y(size-6 : size+9))
xlabel("n");
ylabel("y[n](-6:9)")
%(c)
figure;
x = -30:30;
y = log(x);
stem(y);
isinf(y)
%(f)
clear n x1 y;
n = -15:15;
x1 = [zeros(15,1)' 1 zeros(15,1)'];
y = sin((pi/2)*x1);
y_rev = asin(y)/(pi/2);
subplot(2,1,1);
stem(n,x1);
xlabel("n");
ylabel("x[n]")
subplot(2,1,2);
stem(n,y_rev);
xlabel("n");
ylabel("y_rev[n]")

