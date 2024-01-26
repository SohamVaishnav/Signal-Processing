clearvars 

w0 = pi/4;
r0 = 0.9;
b02 = (1 + r0^2 -2*r0*cos(w0))/(2 - 2*cos(w0));
b01 = 1/(2 - 2*cos(w0));

B1 = [b01, -2*b01*cos(w0), b01];
A1 = [1];
B2 = [b02, -2*b02*cos(w0), b02];
A2 = [1, -2*r0*cos(w0), r0^2];
N = 2001;

x = load("handel.mat");
f0 = 1024;
n = 0:1:73112;
f = (x.y)' + sin(2*pi*f0*n);

f1 = filter(B1, A1, f);
f2 = filter(B2, A2, f);

figure;
subplot(2, 2, 1);
plot(0:99, f(1:100));
title("Original Signal");
xlabel("t");
ylabel("f(t)");
subplot(2, 2, 2);
plot(0:99, f1(1:100));
title("Filtered Signal using first filter");
xlabel("t");
ylabel("f1(t)");
subplot(2, 2, 3);
plot(0:99, f(1:100));
title("Original Signal");
xlabel("t");
ylabel("f(t)");
subplot(2, 2, 4);
plot(0:99, f2(1:100));
title("Filtered Signal using second filter");
xlabel("t");
ylabel("f2(t)");
