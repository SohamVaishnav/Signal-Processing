clearvars

N = [4, 16, 64];
L = 4;
for k = 1:3
    x = [ones(L,1); zeros(N(k)-L, 1)];
    X = fft(x, N(k));
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
end