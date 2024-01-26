N=10;
x = zeros(101, 1);%input signal -> u[n]
for k = 1:101
    x(k) = x(k) + 1;
end
y = q2_1_a(x, N);%output
figure;
indices = 0:100;
stem(indices, y);
title("MA system output when q1.mat is input and N = 10");
xlabel("Discrete time (n)");
ylabel("Value of output");