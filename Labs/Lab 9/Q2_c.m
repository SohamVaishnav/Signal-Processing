clearvars

N = 51;
n = 0:1:N-1;
nc = (N-1)/2;
h = (1/6)*sinc((n-nc)/6).*blackman(51, "symmetric")';

H = fft(h, 1001);

H_norm = mag2db(abs(H)/max(abs(H)));

figure;
subplot(3, 1, 1);
plot(n, h);
title("Filter Coeffs");
xlabel("n");
ylabel("h[n]");
subplot(3, 1, 2);
plot(0:1000, H_norm);
limit = [-100 10];
ylim(limit);
title("Magnitude Spectrum of H");
xlabel("w");
ylabel("|H(e^{jw})|");
subplot(3, 1, 3);
plot(0:1000, angle(H));
title("Phase Spectrum of H");
xlabel("w");
ylabel("\theta(w)");