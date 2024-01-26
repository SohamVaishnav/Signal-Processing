clearvars 

syms t
f0 = 10;
x = sin(2*pi*f0*t);
Fs = 5000;
t_sampled = 0:1/Fs:1;
xn = sin(2*pi*f0*t_sampled);
xq = quadratic_quant(xn, 4, 1);
xqe = xn - xq;

figure;
subplot(3, 1, 1);
plot(t_sampled, xn);
title("Sampled signal");
xlabel("t");
ylabel("x[n]");
subplot(3, 1, 2);
plot(t_sampled, xq);
title("Quantised signal");
xlabel("t");
ylabel("x_q[n]");
subplot(3, 1, 3);
plot(t_sampled, xqe);
title("Quantisation error");
xlabel("t");
ylabel("e_q[n]");