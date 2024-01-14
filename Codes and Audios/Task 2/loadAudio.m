function [x, fs] = loadAudio(filename)
    [x, fs] = audioread(filename);
end