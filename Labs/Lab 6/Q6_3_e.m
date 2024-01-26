clearvars

N = 20;
x = zeros(1, N);
for n = 0:N-1
    x(n+1) = (0.8)^n;
end

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