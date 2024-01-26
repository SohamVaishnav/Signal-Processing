clearvars

t_fine = -10:0.01:10;
x = zeros(1, 2001);
for k = 1:2001
    if (t_fine(k) >= -1 && t_fine(k) < 0)
        x(k) = t_fine(k) + 1;
    end
    if (t_fine(k) >= 0 && t_fine(k) <= 1)
        x(k) = -t_fine(k) + 1;
    end
end

t_s1 = -1:0.5:1;
x_sampled1 = zeros(1, length(t_s1));
for k = 1:length(t_s1)
    if (t_s1(k) >= -1 && t_s1(k) < 0)
       x_sampled1(k) = t_s1(k) + 1;
    end
    if (t_s1(k) >= 0 && t_s1(k) <= 1)
       x_sampled1(k) = -t_s1(k) + 1;
    end
end
xr1 = sinc_recon(t_s1, x_sampled1, 0.5, t_fine);

t_s2 = -1:0.2:1;
x_sampled2 = zeros(1, length(t_s2));
for k = 1:length(t_s2)
    if (t_s2(k) >= -1 && t_s2(k) < 0)
       x_sampled2(k) = t_s2(k) + 1;
    end
    if (t_s2(k) >= 0 && t_s2(k) <= 1)
       x_sampled2(k) = -t_s2(k) + 1;
    end
end
xr2 = sinc_recon(t_s2, x_sampled2, 0.2, t_fine);

t_s3 = -1:0.1:1;
x_sampled3 = zeros(1, length(t_s3));
for k = 1:length(t_s3)
    if (t_s3(k) >= -1 && t_s3(k) < 0)
       x_sampled3(k) = t_s3(k) + 1;
    end
    if (t_s3(k) >= 0 && t_s3(k) <= 1)
       x_sampled3(k) = -t_s3(k) + 1;
    end
end
xr3 = sinc_recon(t_s3, x_sampled3, 0.1, t_fine);

t_s4 = -1:0.05:1;
x_sampled4 = zeros(1, length(t_s4));
for k = 1:length(t_s4)
    if (t_s4(k) >= -1 && t_s4(k) < 0)
       x_sampled4(k) = t_s4(k) + 1;
    end
    if (t_s4(k) >= 0 && t_s4(k) <= 1)
       x_sampled4(k) = -t_s4(k) + 1;
    end
end
xr4 = sinc_recon(t_s4, x_sampled4, 0.05, t_fine);

figure;
sgtitle("Sinc Recon");
subplot(2, 2, 1)
plot(t_fine, xr1);
title("Ts = 0.5");
xlabel("t");
ylabel("Xr");
subplot(2, 2, 2)
plot(t_fine, xr2);
title("Ts = 0.2");
xlabel("t");
ylabel("Xr");
subplot(2, 2, 3)
plot(t_fine, xr3);
title("Ts = 0.1");
xlabel("t");
ylabel("Xr");
subplot(2, 2, 4)
plot(t_fine, xr4);
title("Ts = 0.05");
xlabel("t");
ylabel("Xr");