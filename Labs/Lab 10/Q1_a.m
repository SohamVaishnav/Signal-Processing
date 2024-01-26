fs = 10000;
A = [0.5, 0.5];
td1 = 4;
P = [0, 0];
F1 = [350, 440];
x1 = SineSum(A, F1, P, td1, fs);
%sound(x1);

td2 = 0.5;
F2 = [480, 620];
b1 = SineSum(A, F2, P, td2, fs);
z1 = zeros(1, length(0:1/fs:td2));
x2 = [b1, z1, b1, z1, b1, z1, b1, z1];
%sound(x2);

td3 = 2;
F3 = [440, 480];
b2 = SineSum(A, F3, P, td3, fs);
z2 = zeros(1, length(0:1/fs:td3));
x3 = [b2, z2, b2, z2, b2, z2, b2, z2];
%sound(x3);

figure;
subplot(3, 1, 1);
plot(x1);
axis([0 499 -1 1]);
title("x1");
xlabel("n");
ylabel("x1[n]");
subplot(3, 1, 2);
plot(x2);
axis([0 499 -1 1]);
title("x2");
xlabel("n");
ylabel("x2[n]");
subplot(3, 1, 3);
plot(x3);
axis([0 499 -1 1]);
title("x3");
xlabel("n");
ylabel("x3[n]");

