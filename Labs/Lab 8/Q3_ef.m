clearvars

B = [1, 2, 3, 4, 5, 6, 7, 8];
xqe = zeros(1, 8);
sqnr = zeros(1, 8);
for k = 1:8
    f0 = 10;
    Fs = 5000;
    t_sampled = 0:1/Fs:1;
    xn = sin(2*pi*f0*t_sampled);
    xq = quadratic_quant(xn, B(k), 1);
    xqe(k) = max(abs(xn - xq));
    sqnr(k) = sum(abs(xn).^2)/sum(abs(xqe).^2);
end

figure;
plot(B, xqe);
title("Max Quantisation Error varying with B");
xlabel("B");
ylabel("Max Quantisation error")

figure;
plot(B, sqnr);
title("Signal to Quantisation noise ratio vs B");
xlabel("B");
ylabel("SQNR");