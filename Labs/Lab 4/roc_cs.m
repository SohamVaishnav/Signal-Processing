function [N, ROC, C, S] = roc_cs(p)
N = (length(unique(abs(p)))) + 1;
uniqs = unique(abs(p));
ROC = zeros(N, 2);
for k = 1:length(uniqs)
    ROC(k+1, 1) = uniqs(k);
    if k ~= length(uniqs)
        ROC(k+1, 2) = uniqs(k+1);
    end
end
ROC(N, 2) = inf;
if (uniqs(1) == 0)
    ROC = ROC(2:N, 1:2);
    N = N - 1;
end
C = zeros(N, 1);
C(N) = 1;
S = zeros(N, 1);
for k = 1:N
    if (ROC(k, 1) <= 1) && (1 <= ROC(k, 2))
        S(k) = 1;
    end
end
end