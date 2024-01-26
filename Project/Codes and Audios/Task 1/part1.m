clear sound;
[x, fs] = loadAudio("q1.wav");
A=size(x);
numecho=5;
%soundsc(x,fs);
disp(A);
delay=10;
d = 340*delay; 
Irec=1/(4*pi*d*d); 
atten= log(Irec/(10^(-12)))/log(1/10^(-12));
gap=ceil(fs*delay);
imp = zeros(1,gap*10);
imp(1)=1;
for k=1:numecho
    imp(k*gap+1)=atten*imp((k-1)*gap+1);
end
subplot(2,1,1);
n1=1:A(1);
plot(n1,x);
title('original audio');
echofinal=zeros(length(imp)+A(1)-1,A(2));
for k=1:A(2)   
    echox=conv(x(:,k),imp(:));
    echofinal(:,k)= echox;
end
subplot(2,1,2);
n2=1:length(echox);
plot(n2,echofinal);
title('Induced echo audio');
playSig(echofinal,fs);
%soundsc(echox,fs);




