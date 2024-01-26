function B = myHPF(A, w0_FS, wc)
    B = zeros(1, length(A));
    N = (length(A)-1)/2;
    for k = 1:length(A)
        if (k-N-1)*w0_FS >= wc || (k-N-1)*w0_FS <= -wc
            B(k) = A(k);
        end
    end
end