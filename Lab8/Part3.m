% Part3.m
% Author: Charles Yang
% Signal&System 9.2 (a)(b)
%% (a)
zero = 1;
a1 = [1 0 1];
a2 = [1 0.5 1];
a3 = [1 2 1];
a4 = [1 4 1];
solve_plot(zero,a1);
solve_plot(zero,a2);
solve_plot(zero,a3);
solve_plot(zero,a4);
%% (b)
omega = -5:0.1:5;
H1 = freqs(zero,a1,omega);
H2 = freqs(zero,a2,omega);
H3 = freqs(zero,a3,omega);
H4 = freqs(zero,a4,omega);
figure;
subplot(221);
plot(omega,abs(H1));xlabel('w');ylabel('|H1(jw)|');title('|H1(jw)|');
grid;
subplot(222);
plot(omega,abs(H2));xlabel('w');ylabel('|H2(jw)|');title('|H2(jw)|');
grid;
subplot(223);
plot(omega,abs(H3));xlabel('w');ylabel('|H3(jw)|');title('|H3(jw)|');
grid;
subplot(224);
plot(omega,abs(H4));xlabel('w');ylabel('|H4(jw)|');title('|H4(jw)|');
grid;
%% Plot_Solve Function
function solve_plot(up, down)
    zero = roots(up);
    pole = roots(down);
    figure;
    plot(real(zero),imag(zero),'o');
    hold on;
    plot(real(pole),imag(pole),'x');
    axis([-6 6 -6 6]);
    grid;
end
