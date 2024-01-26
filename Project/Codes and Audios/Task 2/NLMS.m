function out = NLMS(d, x, fl, u)
    out = zeros(size(d));
    del = 1e-5;
    w = zeros(fl, 1);
    
    for n = fl:length(d)
        xn = x(n:-1:n-fl+1);
        yn = w' *xn;
        en = d(n) - yn;
        w = w + (u/(norm(xn)^2 + del))*en*xn;
        out(n) = yn;
    end
end
