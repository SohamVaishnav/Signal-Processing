clc
clearvars

N =5;
A = zeros(1,N);

for p=1:N
    A(p) = 1/p^2;
end

M=5;
fs = 10000;
F_notes = [250 300 350 400 450 500 450 400 350 300 250];
td_notes = 0.8*ones(1,length(F_notes));
P = zeros(1,N);
adsr = [0.2 0.3 0.7 0.1 0.3];

y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);

sound(y);

audiowrite('Q4_audio.wav',y,fs);