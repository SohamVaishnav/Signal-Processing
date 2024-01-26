N = 5;
f0 = 50;
A = zeros(1, N);
for k = 1:N
    A(k) = 1/(k*k);
end
P = zeros(1, N);
td = 1;
fs = 10000;

x1 = Harmonics(A, f0, P, td, fs);
sound(x1);

figure;
plot(x1);
xlim([0 500]);
title("x1");
xlabel("n");
ylabel("x_1[n]");