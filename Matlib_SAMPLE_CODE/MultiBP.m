function [ filteredwv ] = MultiBP(wv, order, cutofffrq, sr, bpassflag )
 
% wv = audio signal
% order = filter order
% cutofffrq = cut off frequency vector
% sr = sampling rate
 
if bpassflag==0
    filt=fir1(order, cutofffrq/(sr/2), 'DC-1'); % create FIR multi band pass filter
    filteredwv=fftfilt(filt, wv); % filter audio signal
else
    filt=fir1(order, cutofffrq/(sr/2), 'DC-0'); % create FIR multi band stop filter
    filteredwv=fftfilt(filt, wv); % filter audio signal
end
 
end


