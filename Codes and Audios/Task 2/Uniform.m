function origSig = Uniform(echoCorr, echoedSig, fs, peaks, locs)
    alpha = peaks(1)/max(echoCorr);
    origSig = echoedSig - delayseq(echoedSig*alpha, locs(1));
end