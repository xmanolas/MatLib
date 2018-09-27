function [ fmwave, modind, cmratio ] = FMfunction(secs, ampc, freqc, ampm, freqm)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
rate = 44100;
tsamp = rate * secs;
length = 1:tsamp;
 
carrier = ampc*sin(2*pi*freqc*length/rate);
mod = ampm*sin(2*pi*freqm*length/rate);
 
newfreq = freqc*ones(1,tsamp) + mod;
 
fmwave =ampc*sin(2*pi*length/rate.*newfreq);
 
modind = ampm/freqm;
cmratio = freqc/freqm;
 
sound(fmwave, rate);
 
plot(fmwave(1:2000));
 
end
