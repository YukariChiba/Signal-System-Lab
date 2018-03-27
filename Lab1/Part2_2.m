% Part2_2.m
% Author: Charles Yang
% Signal&System 1.3(b)(c)

n = (-3 : 7);
x = zeros(1,11);
x(4) = 2;
x(6:8) = [1,-1,3];
ny1 = n+2;
ny2 = n-1;
ny3 = -n;
ny4 = -n+1;
figure;
subplot(2,2,1);stem(ny1,x);title('y1');xlabel('n');ylabel('y1(n)')
subplot(2,2,2);stem(ny2,x);title('y2');xlabel('n');ylabel('y2(n)');
subplot(2,2,3);stem(ny3,x);title('y3');xlabel('n');ylabel('y3(n)');
subplot(2,2,4);stem(ny4,x);title('y4');xlabel('n');ylabel('y4(n)');
