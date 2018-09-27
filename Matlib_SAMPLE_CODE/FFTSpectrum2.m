function [] = FFTSpectrum2(wv, fftwndwsize, applywndw, Fs)
 
if applywndw==1                      %Apply and plot Hanning window to signal
    hn = hann(length(wv));          
    wv = wv(:).*hn(:);
end
 
 
x = fft(wv, fftwndwsize);                %Take fft of the signal
y = abs(x);  %Take the real values (magnitude) of the fft
 
f=Fs/fftwndwsize.*(0:(fftwndwsize/2)-1);
 
 
spec=20*log10(y);               %Convert spectral magnitude in db
spec = spec - round(max(spec)); %Set 0db as the maximum value
 
figure  
%Plot normal window signal
plot(f,spec(1:fftwndwsize/2));
 
 
 
    axis([1 20000 -60 20]);
    xlabel('Frequency range Hz'); 
    ylabel('Magnitude (dB)');
    title('Hanning Window');
 
 
end
 





