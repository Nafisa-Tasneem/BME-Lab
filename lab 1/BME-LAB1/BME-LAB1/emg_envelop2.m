load('SADAT_EMG_I_L01.mat');

signal=data;
fs=1000;
envelope(signal,fs);
analysis=hilbert(signal);
y_abs=abs(analysis);
figure;
N=2*2048;
T=N/fs;
sig_f=abs(fft(y_abs(1:N)',N));
sig_n=sig_f/(norm(sig_f));
freq_s=(0:N-1)/T;
plot(freq_s(2:250),sig_n(2:250), '-g', 'LineWidth',1.5);
title('Envelope Detection using Hilbert Transform');
