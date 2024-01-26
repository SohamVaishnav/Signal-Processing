clearvars

%a part
N = 10;
del = zeros(N, 1);
del(1) = 1;
N = 10;
h = zeros(1, 2*N + 1);
h(1) = del(1);
for k = 2:N
    h(k) = del(k) - del(k-1);
end
h(N+1) = 0 - h(N);
figure;
stem(h);

%c part and d part
w0 = pi/200;
n = 0:1000;
s = 5*sin(w0*n);
v = randn(1, 1001);
x = s + v;
    s_new = conv(x, h, "full");
    figure;
    subplot(2, 2, 1);
    plot(s)
    title("s");
    subplot(2, 2, 3);
    plot(x);
    title("x");
    subplot(2, 2, 4);
    plot(s_new);
    title("x after filtering");
    subplot(2, 2, 2);
    plot(s);
    title("s");

%f part
w = -10:0.01:10;
    S = DT_Fourier(s_new, 501, w);
    X = DT_Fourier(x, 501, w);
    figure;
    subplot(2, 2, 1);
    plot(s_new)
    title("filtered x");
    subplot(2, 2, 3);
    plot(w, abs(S));
    title("Magnitude Spectrum of filtered");
    subplot(2, 2, 4);
    plot(w, abs(X));
    title("Magnitude Spectrum of x");
    subplot(2, 2, 2);
    plot(x);
    title("x");