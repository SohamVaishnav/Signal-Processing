clearvars

t_fine = 0:0.001:2;
x = cos(5*pi*t_fine) + sin(10*pi*t_fine);
figure;
plot(t_fine, x);
hold on;
Ts = 0.1;
x_sampled = zeros(1, 21);
for k = 1:21
    x_sampled(k) = cos(5*pi*(k-1)*Ts) + sin(10*pi*(k-1)*Ts);
end
t_sampled = 0:Ts:2;

stem(t_sampled, x_sampled);
title("Signal and its sampled version");
xlabel("t");
ylabel("Values");
legend("Original Fn", "Sampled", "Location","southwest");
