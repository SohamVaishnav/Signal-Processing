clc
clearvars

[echoedSig, fs] = loadAudio("Recording_echo.m4a");
sound(echoedSig, fs);
%[desiredSig, fsd] = loadAudio("q2_hard_out.wav");

[echoedCorr, locCorr, peaks, locs] = locatePeaks(fs, echoedSig);

origSig = cancelEcho(echoedCorr, peaks, locs, fs, echoedSig);

displayPlots(fs, echoedSig, origSig);

%playSig(origSig, fs);

writeAudio(origSig, fs);


