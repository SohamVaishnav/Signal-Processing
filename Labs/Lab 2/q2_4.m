alpha = input("alpha ");
beta = input("beta ");
N = 3; M = 1;
a_k = [1 alpha beta];
b_k = [1];

n = 1:100;

h = impz(b_k, a_k, n);

figure;
plot(h);
hold on;
stem(h);
title("Impulse response of the system for alpha = 1 and beta = 1");
xlabel("time");
ylabel("Values of the output");