function [ filteredwv ] = BP(wv, order, cutofffrq, sr, bpassflag )
 
% wv = audio signal
% order = filter order
% cutofffrq = cut off frequency vector
% sr = sampling rate
 
if bpassflag==0
    filt=fir1(order, cutofffrq/(sr/2), 'bandpass'); % create FIR band pass filter
    filteredwv=fftfilt(filt, wv); % filter audio signal
else
    filt=fir1(order, cutofffrq/(sr/2), 'stop'); % create FIR band stop filter
    filteredwv=fftfilt(filt, wv); % filter audio signal
end
 
end


