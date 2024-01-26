clc
clearvars

inputAudioFile = 'music_';

audio = loadAudioFile(inputAudioFile);

noiseType = classifyNoise(audio);

disp(['The detected noise type is: ' noiseType]);