function y = quadratic_quant(x, B, a)
    y = zeros(1, length(x));
    quant_range = zeros(2^B, 2);
    l = 0;
    divider = 2*a/(2^B);
    for k = 1:2^B
        quant_range(k, 1) = -a + l*divider;
        quant_range(k, 2) = -a + (l+1)*divider;
        l = l+1;
    end
    q_zer = zeros(2^B, 2);
    for k = 1:2^B
        if (k <= 2^(B-1))
            q_zer(k, 1) = (quant_range(k, 1).^2)*(-a);
            q_zer(k, 2) = (quant_range(k, 2).^2)*(-a);
        else
            q_zer(k, 1) = (quant_range(k, 1).^2)*(a);
            q_zer(k, 2) = (quant_range(k, 2).^2)*(a);
        end
    end
    for k = 1:length(x)
        for l = 1:2^B
            if (x(k) >= q_zer(l, 1) && x(k) < q_zer(l, 2))
                y(k) = (q_zer(l, 1) + q_zer(l, 2))/2;
            elseif (x(k) < -a)
                y(k) = q_zer(1, 1)/2 + q_zer(1, 2)/2;
            elseif (x(k) >= a)
                y(k) = q_zer(end, 1)/2 + q_zer(end, 2)/2;
            end
        end
    end
end