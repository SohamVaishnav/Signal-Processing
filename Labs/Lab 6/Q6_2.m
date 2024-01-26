clearvars

x1 = randn(1, 10);
x2 = zeros(1, 10);
x2(4) = 1;

y_lin = conv(x1, x2);
y_cir = cconv(x1, x2, 19);

X1_lin = fft(x1, 19);
X2_lin = fft(x2, 19);

Y_lin = X1_lin.*X2_lin;

X1_cir = fft(x1, 10);
X2_cir = fft(x2, 10);

Y_cir = X1_cir.*X2_cir;

figure;
subplot(2, 2, 1);
plot(y_cir);
title("Circular Convolution");
xlabel("n");
ylabel("value");
subplot(2, 2, 2);
plot(y_lin);
title("Linear Convolution");
xlabel("n");
ylabel("value");
subplot(2, 2, 3);
plot(ifft(Y_cir));
title("Circular Convolution using DFT");
xlabel("n");
ylabel("value");
subplot(2, 2, 4);
plot(ifft(Y_lin));
title("Linear Convolution using the DFT");
xlabel("n");
ylabel("value");