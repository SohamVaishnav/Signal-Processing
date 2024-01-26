clearvars

Wc = [pi/8, pi/4, pi/2];
for wc = 1:3
n = -100:100;
syms w;
X = piecewise((w>=-Wc(wc)) & (w<=Wc(wc)), 1, (w>-pi) & (w<-Wc(wc)), 0, ...
    (w>Wc(wc)) & (w<pi), 0);
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
end