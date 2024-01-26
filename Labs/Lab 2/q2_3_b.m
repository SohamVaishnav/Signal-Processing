N = 30;
y2 = zeros(N, 1);
x2 = zeros(N, 1);

for k = 1:10
    x2(k) = k;
end
for k = 11:20
    x2(k) = (20-k);
end

for k = 2:N
    y2(k) = x2(k) - x2(k-1);
end

figure;
stem(y2, 'filled');
hold on;
stem(x2);
title("Differentiated output of signal given in q2.3(b)");
xlabel("Discrete time (n)");
ylabel("Values of the output");
legend("Output", "Input", "Location", "southwest");