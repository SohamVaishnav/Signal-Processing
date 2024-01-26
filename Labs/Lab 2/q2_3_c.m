N = 100;
y3 = zeros(N, 1);
x3 = sin((1:1:N)*pi/25);
y3(1) = x3(1);

for k = 2:N
    y3(k) = x3(k) - x3(k-1);
end

figure;
stem(1:N, y3, 'filled');
hold on;
stem(x3);
title("Differentiated output of signal given in q2.3(c)");
xlabel("Discrete time (n)");
ylabel("Values of the output");
legend("Output", "Input", "Location", "southwest");