function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs) 

y = [];

for p=1:length(F_notes)

    adsr(1) = adsr(1)/td_notes(p);
    adsr(2) = adsr(2)/td_notes(p);
    adsr(3) = adsr(3)/td_notes(p);
    adsr(4) = adsr(4)/td_notes(p);
    adsr(5) = adsr(5)/td_notes(p);

    [t,env] = Envelope(adsr(1),adsr(2),adsr(3),adsr(4),adsr(5),fs);

    xt = Harmonics(A,F_notes(p),P,td_notes(p),fs);
    
    len = min(length(xt),length(env));
    xte = xt(1:len) .*env(1:len);

    y = [y, xte];
end

end