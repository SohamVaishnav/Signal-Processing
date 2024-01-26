function dk = fourierCoeff(t,xt,T,t1,t2,N)
w0 = (2*pi)/T;
k = -N:N;

%complex number i
i=1i;

dk = (1/T)*(int(xt*exp(-i*k*w0*t),t,t1,t2)); 
end


