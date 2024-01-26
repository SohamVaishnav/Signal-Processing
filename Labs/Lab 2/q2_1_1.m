%convolution of MA system

N = 6;
y = zeros(101, 1); %output signal
h = zeros(101, 1);

x = zeros(101, 1); %input signal
x(1) = x(1) + 1;

for k = 1:101
    if k<=N
        for l = 1:k
            h(k) = h(k) + x(l)/N;
        end
    else 
        for l = k-N:k-1
            h(k) = h(k) + x(l)/N;
        end
    end
end

figure;
stem(1:101, h);
title("Impulse Response (h[n]) of the MA system (N = 6)");
xlabel("Discrete time (n)");
ylabel("Value of the output");


load("q1.mat");

conv_arr = zeros(101*2, 1);
for k = 1:101
    conv_arr(101 - k + 1) = h(k);
    conv_arr(101 + k) = x(k);
end

l = 1;
for n = 102:202
    for k = 1:l
        y(n-101) = y(n-101) + conv_arr(102 + k - 1)*conv_arr(102 - (l-k) - 1);
    end
    l = l + 1;
end

figure;
stem(1:101, y);
title("Output of the q1.mat file using convolution (N = 6)");
xlabel("Discrete time (n)");
ylabel("Value of the output");