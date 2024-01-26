x2 = zeros(10, 1);
for k = 1:10
    if k==4
        x2(k) = 1;
    end
end

x1 = randn(10, 1);

y_cir = cconv(x1, x2, 19);
y_lin = conv(x1, x2);

figure;
subplot(2, 2, 1);
stem(0:1:9, x1);
title("x_1 - Randomly generated 10 numbers from Normal Distribution");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(2, 2, 2);
stem(0:1:9, x2);
title("x_2[n] = \delta[n-3]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(2, 2, 3);
stem(0:1:18, y_lin);
title("y - Linearly Convoluted");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(2, 2, 4);
stem(0:1:18, y_cir);
title("y - Circularly convoluted");
xlabel("Discrete time (n)");
ylabel("Values");
