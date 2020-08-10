clc; clear all;
load('Farhad_EOG_15-L10.mat')
x1=data;
subplot('311')
plot(x1)
 Fs=1000;
T=1/Fs;
 t=0:T:1-T;
 d=designfilt('lowpassfir','FilterOrder', 10,'CutoffFrequency',100,'SampleRate', Fs);
 y=filter(d,x1);
 subplot('312')
 plot(y) 
 
 YOUT = msbackadj(x1)
 subplot('313')
 plot(YOUT)