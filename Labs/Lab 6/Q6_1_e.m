clearvars

f0 = 12;
fs = 64;
L1 = 16;
L2 = 32;
L3 = 64;
L4 = 128;
n = 0:15;

x = cos((2*pi*f0*n)/fs);

X1 = fft(x, 8*L1);
X2 = fft(x, 8*L2);
X3 = fft(x, 8*L3);
X4 = fft(x, 8*L4);

figure;
subplot(2, 2, 1);
plot(abs(X1));
title("L = 16");
xlabel("w");
ylabel("Mag(X)");
subplot(2, 2, 2);
plot(abs(X2));
title("L = 32");
xlabel("w");
ylabel("Mag(X)");
subplot(2, 2, 3);
plot(abs(X3));
title("L = 64");
xlabel("w");
ylabel("Mag(X)");
subplot(2, 2, 4);
plot(abs(X4));
title("L = 128");
xlabel("w");
ylabel("Mag(X)");