function outAudio = writeAudio(origSig, fs)
    outAudio = "task2_out.wav";
    audiowrite(outAudio, origSig, fs);
end