N = [10, 15];
f0 = [100, 150, 200];
fs = 10000;
td = 1;
for k = 1:2
    A = zeros(1, N(k));
    for m = 1:N(k)
        A(m) = 1/m;
    end
    P = zeros(1, N(k));
    for l = 1:3
        x = Harmonics(A, f0(l), P, td, fs);
    end
end

for k = 1:2
    A = zeros(1, N(k));
    for m = 1:N(k)
        A(m) = 1/(m*m);
    end
    P = zeros(1, N(k));
    for l = 1:3
        x = Harmonics(A, f0(l), P, td, fs);
    end
end