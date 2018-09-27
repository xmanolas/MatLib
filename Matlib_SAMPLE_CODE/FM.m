function [fmwv, modindex, cmratio] = FM(carfreq, amp, modfreq, modrng, scnd, sr)
 
    % carfreq = Carrier frequency in Hz
    % modfreq = Modulator frequency in Hz 
    % amp = Carrier amplitude
    % modrng = Modulator amplitude range 
    % scnd = Signal playing time in seconds
    % sr = sampling rate
 
    tme = 0:1/sr:scnd; % generate time vector
    car= 2*pi*tme*carfreq;  % Carrier signal
    modl=modrng*sin(2*pi*tme*modfreq); % Modulator signal
    fmwv=amp*sin(car+modl); % FM signal
    modindex=modrng/modfreq; % modulation index info
    cmratio=carfreq/modfreq; % C:M ratio info
 
end


