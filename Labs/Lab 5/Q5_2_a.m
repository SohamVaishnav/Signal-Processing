clearvars

M = 10;
h = zeros(2*M + 1, 1);
del = zeros(M, 1);
del(1) = 1;
for k = 1:2*M+1
    if k <= M
        for l = 1:k
            h(k) = h(k) + (1/M)*del(k-l+1);
        end
    else 
        for l = 1:M
            h(k) = h(k) + (1/M)*del(l);
        end
    end
end
figure;
plot(h);
title("Imoulse response of the Moving average system");
xlabel("time");
ylabel("value");

