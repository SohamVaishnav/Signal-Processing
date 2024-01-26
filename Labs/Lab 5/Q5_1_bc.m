w = -10:0.01:10;

x1 = zeros(11, 1);
x1(5) = 1;
X1 = DT_Fourier(x1, 5, w);
figure;
subplot(2, 2, 1);
plot(w, real(X1));
title("Real part of DTFT");
subplot(2, 2, 2);
plot(w, imag(X1));
title("Imag part of DTFT");
subplot(2, 2, 3);
plot(w, abs(X1));
title("Magnitude plot of DTFT");
subplot(2, 2, 4);
plot(w, angle(X1));
title("Phase plot of DTFT");

x2 = zeros(11, 1);
x2(1) = 1;
X2 = DT_Fourier(x2, 4, w);
figure;
subplot(2, 2, 1);
plot(w, real(X2));
title("Real part of DTFT");
subplot(2, 2, 2);
plot(w, imag(X2));
title("Imag part of DTFT");
subplot(2, 2, 3);
plot(w, abs(X2));
title("Magnitude plot of DTFT");
subplot(2, 2, 4);
plot(w, angle(X2));
title("Phase plot of DTFT");

x3 = zeros(11, 1);
for k = 3:9
    x3(k) = 1;
end
X3 = DT_Fourier(x3, 6, w);
figure;
subplot(2, 2, 1);
plot(w, real(X3));
title("Real part of DTFT");
subplot(2, 2, 2);
plot(w, imag(X3));
title("Imag part of DTFT");
subplot(2, 2, 3);
plot(w, abs(X3));
title("Magnitude plot of DTFT");
subplot(2, 2, 4);
plot(w, angle(X3));
title("Phase plot of DTFT");

n = -200:200;
w0 = pi/4;
x4 = sin(w0*n);
X4 = DT_Fourier(x4, 0, w);
figure;
subplot(2, 2, 1);
plot(w, real(X4));
title("Real part of DTFT");
subplot(2, 2, 2);
plot(w, imag(X4));
title("Imag part of DTFT");
subplot(2, 2, 3);
plot(w, abs(X4));
title("Magnitude plot of DTFT");
subplot(2, 2, 4);
plot(w, angle(X4));
title("Phase plot of DTFT");

%c part
b = [0.01, 0.5, 0.99];
for a = 1:3
    x5 = zeros(101, 1);
    x6 = zeros(101, 1);
    for k = 1:101
        x5(k) = b(a)^(k-1);
    end
    X5 = DT_Fourier(x5, 1, w);
    for k = 1:101
        x6(k) = (-b(a))^(k-1);
    end
    X6 = DT_Fourier(x6, 1, w);
    figure;
    subplot(2, 2, 1);
    plot(x5);
    title("x for a = b");
    subplot(2, 2, 2);
    plot(x6);
    title("x for a = -b");
    subplot(2, 2, 3);
    plot(w, abs(X5));
    title("Magnitude plot of x for a = b");
    subplot(2, 2, 4);
    plot(w, abs(X6));
    title("Magnitude plot of x for a = -b");
end