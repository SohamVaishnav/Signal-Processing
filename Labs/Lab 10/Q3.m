fs= 10000;
N = 5;
f0 = 50;
A = zeros(1, N);
for k = 1:N
    A(k) = 1/(k*k);
end
P = zeros(1, N);
td = 1;

x1 = Harmonics(A, f0, P, td, fs);

[t_env, env] = Envelope(0.2, 0.2, 0.7, 0.4, 0.2, fs);

soundsc(x1, fs);
pause(2);
soundsc(x1.*env, fs);

figure;
subplot(3, 1, 1);
plot(x1);
title("original audio");
xlabel("n");
ylabel("x[n]");
subplot(3, 1, 2);
plot(env);
title("envelope");
xlabel("n");
ylabel("env[n]");
subplot(3, 1, 3);
plot(x1.*env);
title("enveloped audio");
xlabel("n");
ylabel("x[n].env[n]");