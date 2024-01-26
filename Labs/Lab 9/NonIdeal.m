function B = NonIdeal(A, w0_FS, G, a)
    B = zeros(1, length(A));
    N = (length(A)-1)/2;
    for k = 1:length(A)
        if w0_FS*(k-N-1) ~= -a
            B(k) = A(k)*G/(a+w0_FS*(k-N-1));
        end
    end
end