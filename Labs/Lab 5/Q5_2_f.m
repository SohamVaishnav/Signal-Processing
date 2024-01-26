clearvars

w = -10:0.01:10;
w0 = pi/200;
n = 0:1000;
s = 5*sin(w0*n);
v = randn(1, 1001);
x = s + v;
M = [5, 21, 51];
for m = 1:3
    h = zeros(1, 2*M(m)+1);
    for k = 1:2*M(m)+1
        h(k) = 1/M(m);
    end
    s_new = conv(x, h, "full");
    X = DT_Fourier(x, 501, w);
    S = DT_Fourier(s_new, 501, w);
    figure;
    subplot(2, 2, 1);
    plot(s_new)
    title("filtered x");
    subplot(2, 2, 3);
    plot(w, abs(S));
    title("Magnitude Spectrum of filtered x");
    subplot(2, 2, 4);
    plot(w, abs(X));
    title("Magnitude Spectrum of x");
    subplot(2, 2, 2);
    plot(x);
    title("x");
end