function [sawwv] = SawGen(freq, amp, scnd, sr, plotflg, sndflg, wdth)

% freq = frequency in Hz
% amp = amplitude
% scnd = number of seconds to generate
% sr = sampling rate

tme = scnd*sr;
lngth = 0:tme;
sawwv = amp*sawtooth((2*pi*lngth*freq/sr), wdth);

timeindex = 0:(1/sr):(1/sr)*(1000-1);

if plotflg == 1
    plot(timeindex, sawwv(1:1000));
end

if sndflg == 1
   sound(sawwv, sr)
end
end

