clear all;
close all;
eps = 0.1;
gm=6;
pm=45;
for index=1:0.01:8
    [licz,mian]=zp2tf([],[-1 -1 -1],index);
    [Gm, Pm] = margin(licz,mian);
    if (Pm>pm-eps) && (Pm<pm+eps)
        index
    end
end

for index=1:0.01:8
    [licz,mian]=zp2tf([],[-1 -1 -1],index);
    [Gm, Pm] = margin(licz,mian);
    Gm_dB=20*log10(Gm);
    if (Gm_dB>gm-eps) && (Gm_dB<gm+eps)
        index
    end
end