clearvars

M = 10;
h = zeros(2*M+1, 1);
for k = 1:2*M+1
    h(k) = 0.1;
end
x = zeros(M, 1);
x(1) = 1;
figure;
stem(conv(x, h));
title("Moving average system implemented using convolution");
xlabel("time");
ylabel("value");