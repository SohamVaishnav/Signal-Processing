t = 0:1:20;
f = 0.05;
x1 = sin(2*pi*t*f);

x2 = ones(33, 1);
for k = 1:33
    if mod(k-1, 2) == 1
        x2(k) = -x2(k);
    end
end

y = conv(x1, x2);
figure;
subplot(3, 1, 1);
stem(0:1:20, x1);
title("x[n] = sin(2\pitf) for t \in [0, 20]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 2);
stem(-18:1:14, x2);
title("x_2[n] = -1^n for n = [18, ..., 14]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 3);
stem(-18:1:34, y);
title("y[n] - Convolution of the above two signals");
xlabel("Discrete time (n)");
ylabel("Values");
