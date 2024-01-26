N = 15;
f0 = 100;
fs = 10000;
td = 1;
P = zeros(1, N);

A1 = zeros(1, N);
A2 = zeros(1, N);
A3 = zeros(1, N);
A4 = zeros(1, N);
A5 = zeros(1, N);

for k = 1:N
    A1(k) = sin(pi*k/N);
end

for k = 1:N
    A2(k) = cos(pi*k/N);
end

for k = 1:N
    A3(k) = k;
end

for k = 1:N
    A4(k) = 1/k;
end

for k = 1:N
    A5(k) = 1/(k*k);
end

x1 = Harmonics(A1, f0, P, td, fs);
x2 = Harmonics(A2, f0, P, td, fs);
x3 = Harmonics(A3, f0, P, td, fs);
x4 = Harmonics(A4, f0, P, td, fs);
x5 = Harmonics(A5, f0, P, td, fs);

figure;
subplot(5, 1, 1);
plot(x1);
xlim([0 499]);
title("a_k = sin(\pik/N)");
xlabel("n");
ylabel("x1[n]");
subplot(5, 1, 2);
plot(x2);
xlim([0 499]);
title("a_k = cos(\pik/N)");
xlabel("n");
ylabel("x2[n]");
subplot(5, 1, 3);
plot(x3);
xlim([0 499]);
title("a_k = k");
xlabel("n");
ylabel("x3[n]");
subplot(5, 1, 4);
plot(x4);
xlim([0 499]);
title("a_k = 1/k");
xlabel("n");
ylabel("x4[n]");
subplot(5, 1, 5);
plot(x5);
xlim([0 499]);
title("a_k = 1/k^2");
xlabel("n");
ylabel("x5[n]");