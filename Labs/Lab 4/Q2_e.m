b = [1, -2];
a = [1, -0.5];

figure;
zplane(b, a);

figure;
freqz(b, a, 1001, "whole");

figure;
impz(b, a);