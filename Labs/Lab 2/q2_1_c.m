in = load("q1.mat");
N = 15;
x1 = in.x;
y = q2_1_a(x1, N);%output
figure;
indices = 0:100;
stem(indices, y);
title("MA system output when q1.mat is input and N = 10");
xlabel("Discrete time (n)");
ylabel("Value of output");
