function [echoedCorr, locCorr, peaks, locs] = locatePeaks(fs, echoedSig)
    [echoedCorr, locCorr]  = xcorr(echoedSig, echoedSig);
    [interPeaks, interLoc] = findpeaks(echoedCorr(locCorr>0), ...
        locCorr(locCorr>0), MinPeakDistance = 2*fs*0.1-1);
    [peaks, locs] = findpeaks(interPeaks, interLoc, MinPeakHeight = ...
        max(echoedCorr)*0.005);
    figure;
    plot(locCorr(locCorr>0), echoedCorr(locCorr>0));
    figure;
    plot(interLoc, interPeaks);
    figure;
    plot(locs, peaks);
end