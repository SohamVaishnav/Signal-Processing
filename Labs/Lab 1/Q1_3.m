T = 1; N = 10*T;
T1 = 0.1;
syms t;
xt_sq = rectangularPulse(-T1, T1, t);

%Q1.3(a)
dn_sq = T*fourierCoeff(t, xt_sq, T, -T1, 0.9, N);

%plot of fourier coeff of the square wave -> Q1.3(b)
ind = -N:N;
figure;
stem(ind, real(dn_sq));
hold on;
stem(ind, imag(dn_sq));
title("Fourier Coefficients of periodic square wave");
xlabel("Indices k (from k = -10 to k = 10)");
ylabel("Values of the Fourier coefficients");
legend("Real part", "Complex part", "Location", "northwest");
grid on;

%Q1.3(c)
xt_sq_re = partialfouriersum(dn_sq, T, -0.5:0.01:0.5);

%plot for reconstructed square wave -> Q1.3(c)
figure;
plot(-0.5:0.01:0.5, xt_sq_re);
title("Partially reconstructed square wave");
xlabel("Time");
ylabel("Value of the reconstructed signal");
grid on;