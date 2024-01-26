function origSig = NonUnifBT(echoedSig, fs)
    fnzp = 0;
    for k = 1:length(echoedSig)
        if (echoedSig(k) >= 0.01)
            fnzp = k;
            break;
        end
    end
    [z, n, pn, lnp] = locatePeaks(fs, echoedSig);
    %[z, n] = xcorr(echoedSig, echoedSig);
    %[peaks, lp] = findpeaks(z(n>0), n(n>0), MinPeakDistance = 2*fs*0.1);
    %[pn, lnp] = findpeaks(peaks, lp, MinPeakHeight = max(z)*0.005);
    for k  = length(lnp):-1:1
        alpha = pn(k)/max(z);
        echoedSig = echoedSig - delayseq(alpha*echoedSig, lnp(k));
        [z, n, pr, lr] = locatePeaks(fs, echoedSig);
        %[z, n] = xcorr(echoedSig, echoedSig);
        %[peaks, lp] = findpeaks(z(n>0), n(n>0), MinPeakDistance = 2*fs*0.1);
        %[pr, lr] = findpeaks(peaks, lp, MinPeakHeight = max(z)*0.005);
        for m = 1:length(lr)
            if (lr(m) > lnp(k))
                echoedSig(fnzp+lr(m):end) = 0;
                break;
            end
        end
    end
    origSig = echoedSig;
end