% Q1.4(a) solved for x1_t
T = 1; N = 10;
T1 = 0.25;
syms t;
x1_t = piecewise((t >= -0.25) & (t <= 0), -t, (t >= 0) & (t <= 0.25), t, ...
    (t < -0.25) & (t > 0.25), 0);

dn_x1 = fourierCoeff(t, x1_t, T, -T1, T1, N);

%plot for fourier coeffs of x1_t -> Q1.4(a)
figure;
stem(-N:N, real(dn_x1));
hold on;
stem(-N:N, imag(dn_x1));
title("Fourier Coefficients of x_1(t)");
xlabel("Indices k (from k = -10 to k = 10)");
ylabel("Values of Fourier coefficients");
legend("Real part", "Complex part", "Location", "northwest");
grid on;