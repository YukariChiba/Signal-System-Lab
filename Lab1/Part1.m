% Part1.m
% Author: Charles Yang
% Signal&System 1.2(d)

n = (0:31);
x1 = sin((pi.*n)/4).*cos((pi.*n)/4);
figure;
subplot(3,1,1);
stem(n , x1);
title('x1 plot');
xlabel('n');
ylabel('x1');
x2 = sqrt(cos((pi.*n)/4));
subplot(3,1,2);
stem(n , x2);
title('x2 plot');
xlabel('n');
ylabel('x2');
x3 = sin((pi.*n)/4).*cos((pi.*n)/8);
subplot(3,1,3);
stem(n , x3)
title('x3 plot');
xlabel('n');
ylabel('x3');
