clearvars

bitrate = 1411000;
aux1 = audioread("file_example_WAV_1MG.wav"); 
aux2 = audioread("file_example_WAV_2MG.wav"); 
aux3 = audioread("file_example_WAV_5MG.wav");
aux4 = audioread("file_example_WAV_10MG.wav");
fs = 44100;

time_len1 = length(aux1)/fs;
time_len2 = length(aux2)/fs;
time_len3 = length(aux3)/fs;
time_len4 = length(aux4)/fs;

disp("Time in seconds for the audio signals in order 1mb, 2mb, 5mb and 10mb is:");
disp(time_len1);
disp(time_len2);
disp(time_len3);
disp(time_len4);

bits_used_ADC = bitrate/fs;
disp(bits_used_ADC);

sound(aux1, 44100);
sound(aux2);
sound(aux3);
sound(aux4);

%the more the fs, the faster and more clearer becomes the audio because it
%satisfies (hopefully) the nyquist rate. And the lower the fs, the noisier
%the audio gets because of aliasing