function plots = displayPlots(fs, echoedSig, origSig)
    figure;
    subplot(2, 1, 1);
    plot(echoedSig);
    title("Echoed Signal")
    xlabel("n");
    ylabel("Amplitude");
    subplot(2, 1, 2);
    plot(origSig);
    title("Original (or Non-echoed) Signal")
    xlabel("n");
    ylabel("Amplitude");
end