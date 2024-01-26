clearvars

N = 51;
n = 0:1:N-1;
nc = (N-1)/2;
h = (1/6)*sinc((n-nc)/6);

h1 = ((-1).^n).*h;

H = fft(h1, 1001);

H_norm = mag2db(abs(H)/max(abs(H)));

norm_f = 0:1/1001:1000/1001;

figure;
subplot(3, 1, 1);
stem(n, h1);
title("Filter Coeffs");
xlabel("n");
ylabel("h1[n]");
subplot(3, 1, 2);
plot(norm_f, H_norm);
limit = [-100 10];
ylim(limit);
title("Magnitude Spectrum of H");
xlabel("normalised f (Hz)");
ylabel("|H(e^{jw})|");
subplot(3, 1, 3);
plot(norm_f, angle(H));
title("Phase Spectrum of H");
xlabel("normalised f (Hz)");
ylabel("\theta(w)");