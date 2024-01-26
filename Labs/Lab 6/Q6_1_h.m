clearvars

x = audioread("2.wav");

X = fft(x);
Uniqx = unique(abs(X));

figure;
plot(abs(X));
title("Magnitude Spectrum of auido signal 2");
xlabel("w");
ylabel("Mag(DFT(audio))");

disp("The top three frequencies are:");
disp(Uniqx(5001));
disp(Uniqx(5000));
disp(Uniqx(4999));
