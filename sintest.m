close all
clear all
clc
fs=12000; % sampling frequency
ft=2200; % 3 dB cut frequency
fm=1200; % frequency of the sinusoidal signal
Nf=160; % number of FIR filter taps
fmin=800; % low cut frequency of the filter
fmax=1200; % high cut frequency of the filter
%b=fir1(Nf, 2*ft/fs); % design a low-pass filter with cut frequency ft
b=fir1(Nf, [2*fmin/fs 2*fmax/fs],'bandpass');
% design a band-pass filter with minimum and maximum frequency
% fmin, fmax
% vector b contains the FIR coefficients
freqz(b,1,[],'whole',fs); % plot the frequency response
[x,N]=SinusoidalSource(fm,0.05,fs);
sigma=0.4; % std of the noise
y=x+randn(1,N)*sigma; % add Gaussian noise
figure
plot(y)
title('unfiltered version');
figure
PlotSpectrum(y,fs);
title('unfiltered version');

z=conv(y,b); % filter the signal
% note that the convolution introduces a delay equal to length(b)/2 samples
figure
PlotSpectrum(z,fs);
title('filtered version');
figure
plot(z)
title('filtered version');