function X = radix2fft(x)
    X = zeros(1, length(x));
    N = length(X);
    j = 1j;
    if (N == 2)
        X = [1 1;
            1 -1]*x;
    else
        x2 = x(1:2:end);
        x1 = x(2:2:end);
        x_even = radix2fft(x2);
        x_odd = radix2fft(x1);
        e = exp(-2*pi*j/N);
        k = 1:1:N/2-1;
        W = e^k;
        X = [x_even + W.*x_odd;
            x_even - W.*x_odd];
    end
end