function [amwv, modindex, cmratio] = AM(carfreq,amp, modfreq, modrng, scnd, sr)
 
    % carfreq = frequency in Hz
    % amp = carrier amplitude
    % modfreq = modulator frequency
    % modrng = modulator amplitude/range
    % scnd = number of seconds to generate
    % sr = sampling rate
 
    tme = 0:1/sr:scnd; % generate time vector
    car=sin(2*pi*tme*carfreq); % carrier
    
    modl=sin(2*pi*tme*modfreq); % modulator
    
    amwv=(modrng*modl+amp)/2.*(car); % modulate signal
    
    modindex=modrng/amp; % modulation index info
    cmratio=carfreq/modfreq; % C:M ratio info
 
end


