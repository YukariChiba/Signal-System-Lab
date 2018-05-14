% Part3.m
% Author: Charles Yang
% Signal&System 3.5 (d)(e)(f)(h)
%% (d)
x1 = ones(1,8);
nx1 = 0:length(x1)-1;
x2 = [ones(1,8) zeros(1,8)];
nx2 = 0:length(x2)-1;
x3 = [ones(1,8) zeros(1,24)];
nx3 = 0:length(x3)-1;
N = 64;
for type = 1:3
    for n = 0:N-1
        eval(['r = rem(n,length(x',int2str(type),'));'])
        eval(['x',int2str(type),int2str(type),'(n+1) = x',int2str(type),'(r+1);'])
    end
    eval(['subplot(31',int2str(type),');'])
    eval(['plot(x',int2str(type),int2str(type),');xlabel("n");ylabel("x',int2str(type),'");'])
end
%% (e)
figure;
for type = 1:3
    eval(['a',int2str(type),' = (1/N)*fft(x',int2str(type),int2str(type),');'])
    eval(['subplot(31',int2str(type),');stem(abs(a',int2str(type),'));xlabel("n");ylabel("y',int2str(type),'");'])
end    
%% (f)(h)
N = N/2;
n = 0:N-1;
xx = (1/N)*fft(x33(1:N));
figure;
index=1;
for type = [2 8 12 16]
    eval(['subplot(22', int2str(index),');'])
    eval(['x3_', int2str(type), '=0;'])
    for counter=2:type+1
        eval(['x3_', int2str(type), '= x3_', int2str(type), '+ xx(counter) * exp(1i*(counter-1)*(2*pi/32)*n);'])
        eval(['x3_', int2str(type), '= x3_', int2str(type), '+ conj(xx(counter)) * exp(1i*(1-counter)*(2*pi/32)*n);'])
    end
    eval(['x3_', int2str(type), '= x3_', int2str(type), '+ xx(1);'])
    eval(['stem(x3_', int2str(type),');xlabel("n");ylabel("x3_{',int2str(type),'}");'])
    index = index+1;
end
