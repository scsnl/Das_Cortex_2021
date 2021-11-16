%Anup Das
%18 October, 2019
%This program calculates Power

close all;
clear all; 
clc;

addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/Generated_Data;

StrSavePowerVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/Power_Results/';

%Load data
load('ITG.mat');
PowerVals = SpectrogramCalc(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_ITG.mat'),'PowerVals');
clear RegXData

load('FG.mat');
PowerVals = SpectrogramCalc(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_FG.mat'),'PowerVals');
clear RegXData

load('IPL.mat');
PowerVals = SpectrogramCalc(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_IPL.mat'),'PowerVals');
clear RegXData

load('IPS.mat');
PowerVals = SpectrogramCalc(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_IPS.mat'),'PowerVals');
clear RegXData

load('HIPP.mat');
PowerVals = SpectrogramCalc(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_HIPP.mat'),'PowerVals');
clear RegXData









load('ITG.mat');
PowerVals = SpectrogramCalc_HighGamma(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_ITG.mat'),'PowerVals');
clear RegXData

load('FG.mat');
PowerVals = SpectrogramCalc_HighGamma(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_FG.mat'),'PowerVals');
clear RegXData

load('IPL.mat');
PowerVals = SpectrogramCalc_HighGamma(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_IPL.mat'),'PowerVals');
clear RegXData

load('IPS.mat');
PowerVals = SpectrogramCalc_HighGamma(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_IPS.mat'),'PowerVals');
clear RegXData

load('HIPP.mat');
PowerVals = SpectrogramCalc_HighGamma(RegXData);
save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_HIPP.mat'),'PowerVals');
clear RegXData























