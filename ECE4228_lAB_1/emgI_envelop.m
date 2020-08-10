%envelope detection of EMG without hilbert 
clc;
clear all;
load('SADAT_EMG_I_L01.mat');
s = data;
Fs = 500;                                                   % Hz
t = linspace(0, 1, length(s))/Fs;                           % Time Vector
[yup,ylo] = envelope(s,25,'peak');
figure(1)
plot(t, s)
hold on
plot(t, yup, 'r', 'LineWidth',1)
plot(t, ylo, 'r', 'LineWidth',1)
hold off
grid