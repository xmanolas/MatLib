function [] = FFTSpectrum(wv, fftwndwsize, applywndw)
 
if applywndw==1                      %Apply and plot Hanning window to signal
    hn = hann(length(wv));          
    wv = wv(:).*hn(:);
end
 
 
x = fft(wv, fftwndwsize);                %Take fft of the signal
y = abs(x);                     %Take the real values (magnitude) of the fft
spec=20*log10(y);               %Convert spectral magnitude in db
spec = spec - round(max(spec)); %Set 0db as the maximum value
 
figure                          %Plot normal window signal
semilogx(spec);
 
 
    axis([20 20000 -60 20]);
    xlabel('Frequency range Hz'); 
    ylabel('Magnitude (dB)');
    title('Hanning Window');
 
 
end





