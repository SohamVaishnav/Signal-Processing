clearvars

x = audioread("file_example_WAV_2MG.wav");
xq_1 = quadratic_quant(x, 3, 1);

B = [1, 2, 3, 4, 5, 6, 7, 8];
for k = 1:8
    y = quadratic_quant(x, B(k), 1);
    sound(y);
    pause(2);
end








