 clc; clear all;
load('Tamim_EEG_15-L03.mat')
 
 x1=data;
 subplot('511')
 plot(x1);
 title('Original EEG signal')

 filtered_EEG= bandpass(x1,[8 13],200); %alpha
 subplot('512')
 plot(filtered_EEG);
 title('Aplha rhythm')
 
 filtered_EEG= bandpass(x1,[13 30],200); %beta
 subplot('513')
 plot(filtered_EEG);
 title('Beta rhythm')
 
 filtered_EEG= bandpass(x1,[1 5],200); %gamma
 subplot('514')
 plot(filtered_EEG);
 title('Gamma rhythm')
 filtered_EEG= bandpass(x1,[4 8],200); %delta
 subplot('515')
 plot(filtered_EEG);
 title('Delta rhythm')