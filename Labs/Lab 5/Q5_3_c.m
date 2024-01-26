clearvars

w1 = pi/8;
w2 = pi/4;
n = -100:100;
syms w;
X = piecewise((w>=w1) & (w<=w2), 1, (w>-pi) & (w<w1), 0, ...
    (w>w2) & (w<pi), 0);
j = 1j;
x = (1/(2*pi))*int(X*exp(j*w*n), w, -pi, pi);
figure;
stem(n, real(x));
hold on;
stem(n, imag(x));
grid on;
title("Inverse DTFT of the given function in \omega : X(e^{j\omega})");
xlabel("time");
ylabel("value");
legend("Real", "Imag", "Location","southwest");