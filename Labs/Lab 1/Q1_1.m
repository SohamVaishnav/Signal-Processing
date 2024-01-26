%Q1.1(a)
N = 5; T = 1;
syms t;
xt_a = 2*cos(2*pi*t) + cos(6*pi*t);
t1 = -0.5; t2 = 0.5;

dn_a = fourierCoeff(t, xt_a, T, t1, t2, N);

%plots for Q1.1(a)
indices = -N:N;
figure;
stem(indices, real(dn_a));
grid on;
hold on;
stem(indices, imag(dn_a));
xlabel("Indices k (from k = -5 to k = 5)");
ylabel("Value of the Fourier Coefficients");
title("Fourier Coefficients of x(t) = 2cos(2\pit) + cos(6\pit)");
legend("real part", "complex part", "Location","northwest");

% ---------------- % --------------- %
%Q1.1(b)
T = 1; N = 10; T1 = T/4;
xt_b = rectangularPulse(-T1, T1, t);

dn_b = fourierCoeff(t, xt_b, T, -T, T, N);

%plots for Q1.1(b)
indices = -N:N;
figure;
stem(indices, real(dn_b));
grid on;
hold on;
stem(indices, imag(dn_b));
xlabel("Indices k (from k = -10 to k = 10)");
ylabel("Values of Fourier Coefficients")
title("Fourier Coefficients of periodic square wave");
legend("real part", "complex part", "Location","northwest");