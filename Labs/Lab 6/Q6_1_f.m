clearvars

f0 = 11;
fs = 64;
L = 16;
n = 0:15;

x = cos((2*pi*f0*n)/fs);

X1 = fft(x, L);
X2 = fft(x, 2*L);
X3 = fft(x, 4*L);
X4 = fft(x, 8*L);

figure;
subplot(2, 2, 1);
stem(abs(X1));
title("N = 16");
xlabel("w");
ylabel("Mag(X)");
subplot(2, 2, 2);
stem(abs(X2));
title("N = 32");
xlabel("w");
ylabel("Mag(X)");
subplot(2, 2, 3);
plot(abs(X3));
title("N = 64");
xlabel("w");
ylabel("Mag(X)");
subplot(2, 2, 4);
plot(abs(X4));
title("N = 128");
xlabel("w");
ylabel("Mag(X)");