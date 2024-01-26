function dk = fourierCoeff(t,xt,T,t1,t2,N)
w0 = (2*pi)/T;
k = -N:N;
dk = zeros(1, 2*N+1);

%complex number i
i=1i;
disp(size(k));
disp(size(t));
for l = 1:2*N+1
    for m = 1:length(t)
        dk(l) = dk(l) + (1/T)*xt(m)*exp(i*w0*(l-N-1)*t(m));
    end
end


