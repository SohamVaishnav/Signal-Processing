%MA system
function y = q2_1_a(x, N) 

y = zeros(101, 1);
for k = 1:101
    if k<=N
        for l = 1:k
            y(k) = y(k) + x(l)/N;
        end
    else 
        for l = k-N:k-1
            y(k) = y(k) + x(l)/N;
        end
    end
end
end