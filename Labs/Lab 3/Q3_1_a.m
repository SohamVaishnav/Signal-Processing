%generating a random sequence of 10 samples
x = randperm(50, 10);

h = ones(10, 1);
y1 = zeros(25, 1);
y2 = zeros(25, 1);

conv_arr = zeros(151, 1); %x axis made for convolution
for k = 50:59
    conv_arr(100 - k) = h(k-49);
    conv_arr(k+1) = x(k-49);
end

l = 1;
for n = 11:31
    for k = 1:l
        y1(n-10) = y1(n-10) + conv_arr(51 + k - 1)*conv_arr(51 - (l-k) - 1);
    end
    l = l + 1;
end

%figure 3.1(a)(i)
figure;
subplot(3, 1, 1);
stem(x);
title("Randomly generated 10 numbers");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 2);
stem(0:1:9, h);
title("x_1[n] = u[n] - u[n-10]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 3);
stem(0:1:24, y1);
title("y_1[n] - Convolution of the above two signals");
xlabel("Discrete time (n)");
ylabel("Values");

l = 5;
for n = 11:26
    for k = 1:l
        y2(n-1) = y2(n-1) + conv_arr(51 + k - 1)*conv_arr(51 - (l-k) - 1);
    end
    l = l + 1;
end
l = 1;
for n = 16:19
    for k = 1:l
        y2(n-10) = y2(n-10) + conv_arr(51 + k - 1)*conv_arr(51 - (l-k) - 1);
    end
    l = l + 1;
end

%figure 3.1(a)(ii)
figure;
subplot(3, 1, 1);
stem(x);
title("Randomly generated 10 numbers");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 2);
stem(-4:1:5, h);
title("x_1[n] = u[n+4] - u[n-5]");
xlabel("Discrete time (n)");
ylabel("Values");
subplot(3, 1, 3);
stem(-9:1:15, y2);
title("y_1[n] - Convolution of the above two signals");
xlabel("Discrete time (n)");
ylabel("Values");