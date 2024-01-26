function origSig = cancelEcho(echoCorr, peaks, locs, fs, echoedSig)
    flag = 0;
    if (length(locs) == 2)
        if (locs(1) - 0 ~= locs(2) - locs(1))
            flag = 1;
        end
    else
        for k = 2:length(locs)-1
            if (locs(k) - locs(k-1) ~= locs(k+1) - locs(k))
                flag = 1;
                break;
            end
        end
    end
    if (flag == 0)
        echoedSig = Uniform(echoCorr, echoedSig, fs, peaks, locs);
    else
        %nuChoice = input("1 for NLMS and 0 for Bottom-to-Top");
        %if (nuChoice == 1)
         %   echoedSig = NLMS(desiredSig, echoedSig);
        %else 
            echoedSig = NonUnifBT(echoedSig, fs);
        %end
    end
    origSig = echoedSig;
end