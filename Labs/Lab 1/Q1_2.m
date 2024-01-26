N = 5; T = 1;
syms t;
xt_a = 2*cos(2*pi*t) + cos(6*pi*t);
t1 = -0.5; t2 = 0.5;

%Q1.2(a)
dn_a = fourierCoeff(t, xt_a, T, t1, t2, N);

time_grid = -0.5:0.01:0.5;
xt_re = partialfouriersum(dn_a, T, time_grid);

%plots -> Q1.2(b)
figure;
fplot(xt_a);
grid on;
hold on;
plot(time_grid, xt_re);
title("Original signal x(t) and its partially reconstructed signal x(t)_{Re}");
xlabel("Time");
ylabel("Value of the signals");
legend("x(t)", "x(t)_{Re}", "Location","southwest");

%errors -> Q1.2(c)
xt_dis = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
fprintf("The Maximum Absolute Error is");
mae = max(abs(xt_dis - xt_re));
disp(vpa(mae));
fprintf("The Root Mean Squared Error is");
rootmse = sqrt(mean((xt_re - xt_dis).^2));
disp(vpa(rootmse));