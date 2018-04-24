% Part3.m
% Author: Charles Yang
% Signal&System 2.5(d)(e)(f)(g)
%% (d)
x=[1 zeros(1,19)];
h1_x = h1(x);
h2_x = h2(x);
ny = 0:19;
figure;
subplot(211),stem(ny,h1_x);grid on;legend('h1');
subplot(212),stem(ny,h2_x);grid on;legend('h2');
%% (e)
clear x;
x = ones(1,20);
s1 = h1(x);
s2 = h2(x);
ny = 0:19;
figure;
subplot(211),stem(ny,s1);grid on;legend('s1');
subplot(212),stem(ny,s2);grid on;legend('s2');
%% (f)
clear h1_x h2_x;
x = [1 zeros(1,19)];
u = ones(1,5);
h1_x = h1(x);
h2_x = h2(x);
z11 = conv(h1_x,u);
z22 = conv(h2_x,u);
z1 = z11(1:20);
z2 = z22(1:20);
z1;
z2;
%% (g)
figure;
subplot(211);stem(ny,z1);grid on;title('z1');
subplot(212);stem(ny,s1);grid on;title('s1');
%%
function [y]=h1(x) 
    len=length(x); 
    for i=1:len 
        if i==1,y(i)=x(i); 
        else 
            y(i)=x(i)-3*y(i-1)/5; 
        end 
    end 
end

function [y]=h2(x)
    len=length(x);
    for i=1:len
        if i==1,y(i)=x(i);
        else
            y(i)=x(i)-((3/5)^i)*y(i-1);
        end
    end
end