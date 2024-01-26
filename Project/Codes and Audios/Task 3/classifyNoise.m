function noiseType = classifyNoise(audio)

z1 = audioread('test_new_1.wav');
z2 = audioread('test_new_2.wav');
z3 = audioread('test_new_3.wav');
z4 = audioread('test_new_4.wav');
z5 = audioread('test_new_5.wav');
z6 = audioread('test_new_6.wav');

L1 = length(audio);
L2 = length(z1);

if(L1 >L2)
    z1 = [z1 zeros(L1 - L2,1)];
    z2 = [z2 zeros(L1 - L2,1)];
    z3 = [z3 zeros(L1 - L2,1)];
    z4 = [z4 zeros(L1 - L2,1)];
else
    audio = [audio ; zeros(L2 - L1,1)];
end

w1 = xcorr(audio,z1,'normalized');
w2 = xcorr(audio,z2,'normalized');
w3 = xcorr(audio,z3,'normalized');
w4 = xcorr(audio,z4,'normalized');
w5 = xcorr(audio,z5,'normalized');
w6 = xcorr(audio,z6,'normalized');

m1 = max(w1);
m2 = max(w2);
m3 = max(w3);
m4 = max(w4);
m5 = max(w5);
m6 = max(w6);

p1 = m1 + m2 + m3;
p2 = m1 + m4 + m5;
p3 = m2 + m4 + m6;
p4 = m3 + m5 + m6;

p = [p1 p2 p3 p4];
pmax = max(p);

if(pmax==p1)
    noiseType = 'Fan';
elseif(pmax==p2)
    noiseType = 'Traffic';
elseif(pmax==p3)
    noiseType = 'Pressure Cooker';
else
    noiseType = 'Water Pump';
end

end