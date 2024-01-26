function xn = Harmonics(A, f0, P, td, fs)
    N = length(A);
    F = f0*ones(1, N);
    xn = SineSum(A, F, P, td, fs);
end