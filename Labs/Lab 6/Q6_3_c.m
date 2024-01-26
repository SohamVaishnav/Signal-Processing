clearvars

w0 = 3*pi/10;
N = 20;
n = 0:N-1;
x = cos(w0*n);

X = fft(x, N);

figure;
subplot(3, 1, 1);
stem(real(X));
hold on;
stem(imag(X));
title("DFT");
xlabel("k");
ylabel("DFT value");
legend("Real", "Imag", "location", "northeast");
subplot(3, 1, 2);
plot(abs(X));
title("Magnitude Spectrum");
xlabel("k");
ylabel("Mag(DFT)");
subplot(3, 1, 3);
plot(angle(X));
title("Phase Spectrum");
xlabel("k");
ylabel("Phase(DFT)");