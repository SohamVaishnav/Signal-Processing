function X = DT_Fourier(x, N0, w)

N = length(x);
Nw = length(w);
X = zeros(1, Nw);
j = 1j;

for l = 1:N
    X = X + x(l)*exp(-j*w*(l-N0)); 
end