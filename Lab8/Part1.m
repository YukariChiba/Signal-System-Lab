% Part1.m
% Author: Charles Yang
% Signal&System 9.1 (a)(c)
%% (a)
%% -(i)
up = [1 5];
down = [1 2 3];
solve_plot(up,down);
%% -(ii)
up = [2 5 12];
down = [1 2 10];
solve_plot(up,down);
%% -(iii)
up = [2 5 12];
down = [1 4 14 20];
solve_plot(up,down);
%% (c)
up = [1 2 5];
down = [1 -3];
solve_plot(up,down);
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
