clearvars

syms t
f0 = 10;
x = sin(2*pi*f0*t);
Fs = 5000;
t_sampled = 0:1/Fs:1;
xn = sin(2*pi*f0*t_sampled);
xq = quadratic_quant(xn, 4, 1);
xqe = xn - xq;
xq_re = quadratic_quant(xn, 3, 1);
xqe_re = xn - xq_re;

figure;
subplot(2, 1, 1);
histogram(xqe, 15);
title("B=4");
subplot(2, 1, 2);
histogram(xqe_re, 15);
title("B=3");