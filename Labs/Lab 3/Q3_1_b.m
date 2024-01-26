h = ones(4, 1);
x = ones(4, 1);

y = conv(h, x);

figure;
subplot(3, 1, 1);
stem(0:1:3, x);
title("x[n] = u[n] - u[n-4]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 2);
stem(0:1:3, h);
title("h[n] = x[n] = u[n] - u[n-4]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 3);
stem(0:1:6, y);
title("y[n] - Convolution of the above two signals");
xlabel("Discrete time (n)");
ylabel("Values");