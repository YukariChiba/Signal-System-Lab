% Part4.m
% Author: Charles Yang
% Signal&System 4.6 (a)(b)(c)(d)
%% (a)(b)
load ctftmod.mat
whos
fprintf('f1 = %d f2 = %d\n', f1, f2);
z=[dash dash dot dot];
figure(1)
gr=4;
subplot(gr,1,1)
plot(t,x);
title('message x');
subplot(gr,1,2)
plot(t(1:length(dash)),dash);
title('dash');
subplot(gr,1,3)
plot(t(1:length(dot)),dot);
title('dot');
subplot(gr,1,4)
plot(t,z);
title('created signal z');
figure(2)
freqs(bf,af)
%% (c)
load ctftmod.mat
fprintf('f1 = %d f2 = %d\n', f1, f2);
ydash=lsim(bf,af,dash,t(1:length(dash))); 
ydot=lsim(bf,af,dot,t(1:length(dot))); 
figure(1)
gr=4;
subplot(gr,1,1)
plot(t(1:length(dash)),dash);
title('dash');
subplot(gr,1,2)
plot(t(1:length(dot)),dot);
title('dot');
subplot(gr,1,3)
plot(t(1:length(dash)),ydash);
title('filtered dash');
subplot(gr,1,4)
plot(t(1:length(dot)),ydot);
title('filtered dot');
figure(2)
freqs(bf,af)
%% (d)
load ctftmod.mat
fprintf('f1 = %d f2 = %d\n', f1, f2);
y=
figure(1)
gr=4;
subplot(gr,1,1)
plot(t(1:length(dash)),dash);
title('dash');
subplot(gr,1,2)
plot(t(1:length(dot)),dot);
title('dot');
subplot(gr,1,3)
plot(t(1:length(dash)),ydash);
title('filtered dash');
subplot(gr,1,4)
plot(t(1:length(dot)),ydot);
title('filtered dot');
figure(2)
freqs(bf,af)
