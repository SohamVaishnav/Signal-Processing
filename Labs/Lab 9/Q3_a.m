w0 = pi/4;
b0 = 1/(2-2*cos(w0));

B = [b0, -2*b0*cos(w0), b0];
A = [1];
N = 2001;

[H, W] = freqz(B, A, 2001);

figure;
plot(W, real(H));
hold on;
plot(W, imag(H));
title("Frequency Response of Notch Filter");
xlabel("w");
ylabel("H(e^{jw})");
legend("Real", "Imag", "Location","northwest");
