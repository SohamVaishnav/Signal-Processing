clearvars

f0 = 12;
fs = 64;
L = 16;

w = hann(L);
n = 0:L-1;
p = cos((2*pi*f0*n)/fs);

x = w'.*p;

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