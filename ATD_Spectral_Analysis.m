%% Load Audio

clear
close all
clc

[Soundhole,fs] = audioread('Soundhole.wav');

%% Normalise Signal to Max Amplitude of 1

Max = max(abs(Soundhole));
Gain = (1/Max);
Soundhole_Norm = (Soundhole*Gain);

%% Launch signalAnalyzer

signalAnalyzer(Soundhole_Norm,'SampleRate',fs)

% By denoting 'SampleRate' and determining a sample frequency (in this case
% 'fs') the Signal Analyzer displays amplitude against time rather than per
% sample

% TIP! To load more than one audio file in the Signal Analyzer, separate
% each with a comma: signalAnalyzer(Bridge_E_Norm,...,'SampleRate',fs)
