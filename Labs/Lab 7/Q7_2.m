clearvars

t_fine = 0:0.001:2;
x = cos(5*pi*t_fine) + sin(10*pi*t_fine);
Ts = 0.1;
x_sampled = zeros(1, 21);
for k = 1:21
    x_sampled(k) = cos(5*pi*(k-1)*Ts) + sin(10*pi*(k-1)*Ts);
end
t_sampled = 0:Ts:2;

x_zero_hold = interp1(t_sampled, x_sampled, t_fine, "nearest", "extrap");

x_lin = interp1(t_sampled, x_sampled, t_fine, "linear", "extrap");

xr = sinc_recon(t_sampled, x_sampled, Ts, t_fine);

e1 = zeros(1, length(t_fine));
for k = 1:length(t_fine)
    if (t_fine(k) >= 0.25 && t_fine(k) <= 1.75)
        e1(k) = abs(x(k) - x_zero_hold(k));
    end
end
e2 = zeros(1, length(t_fine));
for k = 1:length(t_fine)
    if (t_fine(k) >= 0.25 && t_fine(k) <= 1.75)
        e2(k) = abs(x(k) - x_lin(k));
    end
end
e3 = zeros(1, length(t_fine));
for k = 1:length(t_fine)
    if (t_fine(k) >= 0.25 && t_fine(k) <= 1.75)
        e3(k) = abs(x(k) - xr(k));
    end
end

mae1 = max(e1(251:1751));
mae2 = max(e2(251:1751));
mae3 = max(e3(251:1751));
disp(mae1);
disp(mae2);
disp(mae3);

figure;
subplot(2, 2, 1);
stem(t_sampled, x_sampled);
title("Sampled x");
xlabel("n");
ylabel("value");
subplot(2, 2, 2);
plot(t_fine, x_zero_hold);
hold on;
stem(t_sampled, x_sampled);
title("Zero-hold interpol");
xlabel("t");
ylabel("x_zero_hold");
subplot(2, 2, 3);
plot(t_fine, x_lin);
hold on;
stem(t_sampled, x_sampled);
title("Linear interpol");
xlabel("t");
ylabel("x_lin");
subplot(2, 2, 4);
plot(t_fine, xr);
hold on;
stem(t_sampled, x_sampled);
title("Sinc recon");
xlabel("t");
ylabel("xr");