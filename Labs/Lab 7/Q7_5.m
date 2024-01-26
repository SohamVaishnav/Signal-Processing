clearvars

t_fine = 0:0.001:2;
x = cos(5*pi*t_fine);

%Nyquist rate is FN = 2*2.5 = 5 Hz

Ts = [0.1, 0.2, 0.3, 0.4];
t_s1 = 0:Ts(1):2;
t_s2 = 0:Ts(2):2;
t_s3 = 0:Ts(3):2;
t_s4 = 0:Ts(4):2;

xn1 = zeros(1, length(t_s1));
for k = 1:length(t_s1)
    xn1(k) = cos(5*pi*(k-1)*Ts(1));
end
xn2 = zeros(1, length(t_s2));
for k = 1:length(t_s2)
    xn2(k) = cos(5*pi*(k-1)*Ts(2));
end
xn3 = zeros(1, length(t_s3));
for k = 1:length(t_s3)
    xn3(k) = cos(5*pi*(k-1)*Ts(3));
end
xn4 = zeros(1, length(t_s4));
for k = 1:length(t_s4)
    xn4(k) = cos(5*pi*(k-1)*Ts(4));
end

xr1 = sinc_recon(t_s1, xn1, Ts(1), t_fine);
xr2 = sinc_recon(t_s2, xn2, Ts(2), t_fine);
xr3 = sinc_recon(t_s3, xn3, Ts(3), t_fine);
xr4 = sinc_recon(t_s4, xn4, Ts(4), t_fine);

figure;
subplot(2, 2, 1);
plot(t_fine, xr1);
hold on;
stem(t_s1, xn1);
title("Ts = 0.1");
xlabel("t");
ylabel("xr");
subplot(2, 2, 2);
plot(t_fine, xr2);
hold on;
stem(t_s2, xn2);
title("Ts = 0.2");
xlabel("t");
ylabel("xr");
subplot(2, 2, 3);
plot(t_fine, xr3);
hold on;
stem(t_s3, xn3);
title("Ts = 0.3");
xlabel("t");
ylabel("xr");
subplot(2, 2, 4);
plot(t_fine, xr4);
hold on;
stem(t_s4, xn4);
title("Ts = 0.4");
xlabel("t");
ylabel("xr");

%the more the number of samples and the lesser the value of Ts implies that
%we have a higher sampling freq which is required for a good reconstruction
%therefore, higher the fs (lesser Ts), the better the reconstruction
%for cases where Ts = 0.3 and 0.4, we get cases of aliasing because the fs
%is lesser than nyquist rate -> unfavourable situation