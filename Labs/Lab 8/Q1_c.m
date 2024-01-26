clearvars

syms t
T = [1, 4];
for k = 1:2
w = -5:0.1:5;
xt = rectangularPulse(-T(k), T(k), t);
X = continuousFT(t, xt, -T(k), T(k), w);

figure;
subplot(2, 2, 1);
plot(w, real(X));
title("Real part of X");
xlabel("w");
ylabel("X_{Re}(w)");
subplot(2, 2, 2);
plot(w, imag(X));
title("Imag part of X");
xlabel("w");
ylabel("X_{Im}(w)");
subplot(2, 2, 3);
plot(w, abs(X));
title("Magnitude Spectrum of X");
xlabel("w");
ylabel("|X(w)|");
subplot(2, 2, 4);
plot(w, angle(X));
title("Phase Spectrum of X");
xlabel("w");
ylabel("Phase{X(w)}");
sgtitle("Plots of CTFT(x(t)) = X(w)")
end