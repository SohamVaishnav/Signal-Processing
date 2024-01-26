clc
clearvars

comPort = 'COM5';

a = arduino(comPort, 'Uno', 'Libraries', 'Servo');

microphonePin = 'A0';  
speakerPin = 'D5';     

microphone = readVoltage(a, microphonePin);
writeDigitalPin(a, 'D5', 1);

playTone(a, 'D5', 2400, 10);
fs = 44100;
clear a;