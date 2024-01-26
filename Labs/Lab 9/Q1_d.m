clearvars

w0_FS = 1;
T = 2*pi;
t = -2*T:0.01:2*T;
x = cos(t);

A = fourierCoeff(t, x, T, -2*T, 2*T, 10);

B_d = NonIdeal(A, w0_FS, 1, 1);

x_re = partialfouriersum(A, T, t);
y_d = partialfouriersum(B_d, T, t);

figure;
subplot(2, 1, 1);
plot(t, x_re);
title("Reconstructed x");
xlabel("t");
ylabel("x(t)");
subplot(2, 1, 2)
plot(t, imag(y_d));
title("Reconstructed output y for NonIdealF");
xlabel("t");
ylabel("y_{NI}(t)");