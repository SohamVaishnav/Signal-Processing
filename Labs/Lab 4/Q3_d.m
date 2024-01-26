theta = pi/3;

for r = 0:0.1:1
b = [1, -2*cos(theta), 1];
a = [1, -2*r*cos(theta), r^2];

freqz(b, a, 1001, "whole");
hold on;
end