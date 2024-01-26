N = 30;
y1 = zeros(N, 1);
x1 = zeros(N, 1);

for k = 1:20
    x1(k) = 5;
end
y1(1) = x1(1);

for k = 2:N
    y1(k) = x1(k) - x1(k-1);
end

figure;
stem(y1, 'filled');
hold on;
stem(x1);
title("Differentiated output of signal given in q2.3(a)");
xlabel("Discrete time (n)");
ylabel("Values of the output");
legend("Output", "Input", "Location", "southwest");