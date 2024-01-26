M = input("M = ");

x2 = load("q2_2.mat");
x1 = load("q2_1.mat");

f1 = x1.x;
f2 = x2.x;

f = input("1 for q2_1.mat and 2 for q2_2.mat = ");
if f == 2
N = length(f2);

y = zeros(N*M, 1); %output
for k = 1:(N*M)
    if mod(k, M) == 0
        y(k) = f2(k/M);
    else
        y(k) = 0;
    end
end

%linear interpolation
y_inter = interp1(1:N*M, y, M:M:M*N);

figure;
plot(y_inter);
hold on;
stem(f2);
title("Linear Interpolation of the samples of q2_2.mat");
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
stem(f2);
title("Zero-hold interpolation of the samples of curve q2_2.mat");
xlabel("Discrete time (n)");
ylabel("Value of the output");
legend("Zero-hold Interp.", "Discrete", "Location", "southwest");

else 
N = length(f1);

y = zeros(N*M, 1); %output
for k = 1:(N*M)
    if mod(k, M) == 0
        y(k) = f1(k/M);
    else
        y(k) = 0;
    end
end

%linear interpolation
y_inter = interp1(1:N*M, y, M:M:M*N);

figure;
plot(y_inter);
hold on;
stem(f1);
title("Linear Interpolation of the samples of q2_1.mat");
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
stem(f1);
title("Zero-hold interpolation of the samples of curve q2_1.mat");
xlabel("Discrete time (n)");
ylabel("Value of the output");
legend("Zero-hold Interp.", "Discrete", "Location", "southwest");
end