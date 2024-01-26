function X = continuousFT(t, xt, a, b, w)
    X = zeros(1, length(w));
    X = int(xt*exp(-j*t*w), t, a, b);
end