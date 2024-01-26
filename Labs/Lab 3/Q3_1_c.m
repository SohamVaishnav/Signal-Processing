x = ones(11, 1);
for k = 1:11
    if mod(k, 2) == 1
        x(k) = -x(k);
    end
end

h = ones(5, 1);

y = conv(x, h);
figure;
subplot(3, 1, 1);
stem(-5:1:5, x);
title("x[n] = -1^n");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 2);
stem(-3:1:1, h);
title("h[n] = u[n+3] - u[n-1]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 3);
stem(-8:1:6, y);
title("y[n] - Convolution of the above two signals");
xlabel("Discrete time (n)");
ylabel("Values");