clearvars

fs = 10000;
td = 0.5;
A = [0.5, 0.5];
F = [480, 620];
P = [0, 0];

b1 = SineSum(A, F, P, td, fs);
z1 = zeros(1, length(0:1/fs:td));

x2 = [b1, z1, b1, z1, b1, z1, b1, z1];

sound(x2);