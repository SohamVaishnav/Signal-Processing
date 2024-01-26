function xt_re = partialfouriersum(dk,T,time_grid)

L = length(dk);
N = (L-1)/2; %because L = 2*N+1
w0 = (2*pi)/T;
xt_re = 0;

%complex number i
i = 1i;
for k = 1:2*N+1
    xt_re = xt_re + dk(k)*exp((k-N-1)*i*w0*time_grid);
end
end