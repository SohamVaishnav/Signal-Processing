clearvars

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
    figure;
    subplot(2, 2, 1);
    plot(s)
    title("s");
    subplot(2, 2, 3);
    plot(x);
    title("x");
    subplot(2, 2, 4);
    plot(s_new);
    axis([0 1000 -15 15])
    title("x after filtering");
    hold on;
    plot(s);
    title("s");
end