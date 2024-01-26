r = 0.95;
% = 0:pi:pi/4;
syms x;

for theta = 1:pi/4:pi
    b = [1, -2*cos(theta), 1];
    a = [1, -2*r*cos(theta), r^2];

    freqz(b, a, 1001, "whole");
    hold on;
end