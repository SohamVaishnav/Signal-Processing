n = 1001;

figure;
freqz([1], [1, 0.8], n, "whole");
hold on;
freqz([1], [1, -0.8], n, "whole");
hold on;
freqz([1], [1, 0.1], n, "whole");

figure;
impz([1], [1, 0.8], 50);
hold on;
impz([1], [1, -0.8], 50);
hold on;
impz([1], [1, 0.1], 50);
