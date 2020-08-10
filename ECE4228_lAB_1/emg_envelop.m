clc;
clear all;
load('SADAT_EMG_I_L01.mat');
signal=data;
Fs=500;
envelope(signal,Fs);

analy=hilbert(signal);
y_abs=abs(analy);
figure();
N=2*2048;T=N/Fs;
sig_f=abs(fft(y_abs(1:N)',N));
sig_n=sig_f/(norm(sig_f));
freq_s=(0:N-1)/T;
plot(freq_s(2:250),sig_n(2:250), 'r', 'LineWidth',1);
title('Envelope Detection : Hilbert Transform')
