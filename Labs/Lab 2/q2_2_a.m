M = input("M = ");
N = 20;
x = sin(1:20); %test input
y = zeros(N*M, 1); %output
for k = 1:(N*M)
    if mod(k, M) == 0
        y(k) = x(k/M);
    else
        y(k) = 0;
    end
end

%linear interpolation
y_inter = interp1(1:N*M, y, M:M:M*N);

figure;
plot(y_inter);
hold on;
stem(x);
title("Linear Interpolation of the samples of sin(x)");
xlabel("Discrete time (n)");
ylabel("Value of the output");
legend("Lin. Interp.", "Discrete", "Location", "southwest");


%zero-order hold
y_ZOH = zeros(N*M, 1);

for k = 1:N*M
    if rem(k, M) == 0
        y_ZOH(k) = y(k);
    else
        y_ZOH(k) = 0;
    end
end

figure;
stem(y_ZOH);
hold on;
stem(x);
title("Zero-hold interpolation of the samples of curve sin(x)");
xlabel("Discrete time (n)");
ylabel("Value of the output");
legend("Zero-hold Interp.", "Discrete", "Location", "southwest");