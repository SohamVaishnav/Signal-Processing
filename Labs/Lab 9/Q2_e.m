n = 0:1:200;

x1 = cos(pi*n/16) + 0.25*sin(pi*n/16);
x2 = cos(pi*n/16) + 0.25*randn(1, 201);

N = 51;
nh = 0:1:N-1;
nc = (N-1)/2;

hB = (1/6)*sinc((nh-nc)/6).*blackman(N, "symmetric")';
hs = (1/6)*sinc((nh-nc)/6);

y11 = conv(x1, hB); 
y12 = conv(x1, hs);

y21 = conv(x2, hB);
y22 = conv(x2, hs);

figure;
subplot(3, 1, 1);
plot(n, x1);
title("Original Signal");
xlabel("n");
ylabel("x[n]");
subplot(3, 1, 2);
plot(0:250, y11);
title("Filter-window");
xlabel("n");
ylabel("y_1[n]");
subplot(3, 1, 3);
plot(0:250, y12);
title("Filter-Blackman");
xlabel("n");
ylabel("y_2[n]");

figure;
subplot(3, 1, 1);
plot(n, x2);
title("Original Signal");
xlabel("n");
ylabel("x_1[n]");
subplot(3, 1, 2);
plot(0:250, y21);
title("Filter-window");
xlabel("n");
ylabel("y_1[n]");
subplot(3, 1, 3);
plot(0:250, y22);
title("Filter-Blackman");
xlabel("n");
ylabel("y_2[n]");