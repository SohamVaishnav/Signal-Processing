clearvars

syms t
T = pi;
w = -5:0.1:5;
j=1j;
x1t = exp(j*t);
x2t = cos(t);
X1 = continuousFT(t, x1t, -T, T, w);
X2 = continuousFT(t, x2t, -T, T, w);

figure;
subplot(2, 2, 1);
plot(w, real(X1));
title("Real part of X");
xlabel("w");
ylabel("X_{Re}(w)");
subplot(2, 2, 2);
plot(w, imag(X1));
title("Imag part of X");
xlabel("w");
ylabel("X_{Im}(w)");
subplot(2, 2, 3);
plot(w, abs(X1));
title("Magnitude Spectrum of X");
xlabel("w");
ylabel("|X(w)|");
subplot(2, 2, 4);
plot(w, angle(X1));
title("Phase Spectrum of X");
xlabel("w");
ylabel("Phase{X(w)}");
sgtitle("Plots of CTFT(x(t)) = X(w)")

figure;
subplot(2, 2, 1);
plot(w, real(X2));
title("Real part of X");
xlabel("w");
ylabel("X_{Re}(w)");
subplot(2, 2, 2);
plot(w, imag(X2));
title("Imag part of X");
xlabel("w");
ylabel("X_{Im}(w)");
subplot(2, 2, 3);
plot(w, abs(X2));
title("Magnitude Spectrum of X");
xlabel("w");
ylabel("|X(w)|");
subplot(2, 2, 4);
plot(w, angle(X2));
title("Phase Spectrum of X");
xlabel("w");
ylabel("Phase{X(w)}");
sgtitle("Plots of CTFT(x(t)) = X(w)")