clear sound;
[x,fs1]=loadAudio("q2_hard_out.wav");
[y,fs]=loadAudio("q2_not_so_easy.wav");

fl = 128;
u = 1; 

output_signal = NLMS(x,y,fl,u);

figure;
subplot(3,1,1);
n1=1:length(x);
plot(n1,x);
title('Desired Signal');

subplot(3,1,2);
n2=1:length(y);
plot(n2,y);
title('Echoed Signal');

subplot(3,1,3);
n3=1:length(output_signal);
plot(n3,output_signal);
title('Echo-Cancelled Signal');

playSig(output_signal,fs);