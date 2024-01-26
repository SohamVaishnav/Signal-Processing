clearvars

w0_FS = 1;
T = 2*pi;
t = -2*T:0.01:2*T;
x = sin(2*t) + cos(3*t);

A = fourierCoeff(t, x, T, -2*T, 2*T, 10);
B_low = myLPF(A, w0_FS, 2.5);
B_high = myHPF(A, w0_FS, 2.5);
B_d = NonIdeal(A, w0_FS, 1, 1);

x_re = partialfouriersum(A, T, t);
y_re_low = partialfouriersum(B_low, T, t);
y_re_high = partialfouriersum(B_high, T, t);
y_d = partialfouriersum(B_d, T, t);

figure;
subplot(4, 1, 1);
plot(t, x_re);
title("Reconstructed x");
xlabel("t");
ylabel("x(t)");
subplot(4, 1, 2);
plot(t, y_re_low);
title("Reconstructed output y for LPF");
xlabel("t");
ylabel("y_{l}(t)");
subplot(4, 1, 3);
plot(t, y_re_high);
title("Reconstructed output y for HPF");
xlabel("t");
ylabel("y_{h}(t)");
subplot(4, 1, 4);
plot(t, y_d);
title("Reconstructed output y for NonIdealF");
xlabel("t");
ylabel("y_{NI}(t)");