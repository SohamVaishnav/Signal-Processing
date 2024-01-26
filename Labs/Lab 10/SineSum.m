function xn = SineSum(A, F, P, td, fs)
    N = length(A);
    n = 0:1/fs:td;
    xn = zeros(1, length(n));
    for k = 1:N
        xn = xn + (A(k)*sin(2*pi*F(k).*n + P(k)));
    end
end