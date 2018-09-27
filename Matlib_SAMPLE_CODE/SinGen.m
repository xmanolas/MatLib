function [sinwv] = SinGen(freq, amp, scnd, sr, plotflg, sndflg)

% freq = frequency in Hz
% amp = amplitude
% scnd = number of seconds to generate
% sr = sampling rate

tme = scnd*sr;
lngth = 0:tme;
sinwv = amp*sin(2*pi*lngth*freq/sr);

timeindex = 0:(1/sr):(1/sr)*(1000-1);

if plotflg == 1
    plot(timeindex, sinwv(1:1000));
    xlabel('Time (s)');
    ylabel('Amplitude');
title('Sine wave')
end

if sndflg == 1
sound(sinwv, sr)
 
end

