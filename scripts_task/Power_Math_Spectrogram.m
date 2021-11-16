    %Anup Das
    %18 October, 2019
    %This program calculates Power

    close all;
    clear all; 
    clc;

    addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Generated_Data;

    StrSavePowerVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Power_Results/';
    
    %Math
    %Load data
    load('Spectrogram_Correct_ITG.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Correct_ITG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_FG.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Correct_FG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_IPL.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Correct_IPL.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_IPS.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Correct_IPS.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_HIPP.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Correct_HIPP.mat'),'PowerVals');
    clear RegXData
    
    
    
    
    
    
    
    %Load data
    load('Spectrogram_Correct_ITG.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Correct_ITG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_FG.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Correct_FG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_IPL.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Correct_IPL.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_IPS.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Correct_IPS.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Correct_HIPP.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Correct_HIPP.mat'),'PowerVals');
    clear RegXData
    
    
    
    
    
    
    
    %Recall
    %Load data
    load('Spectrogram_Recall_Correct_ITG.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Recall_Correct_ITG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_FG.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Recall_Correct_FG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_IPL.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Recall_Correct_IPL.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_IPS.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Recall_Correct_IPS.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_HIPP.mat');
    PowerVals = SpectrogramCalc(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_Recall_Correct_HIPP.mat'),'PowerVals');
    clear RegXData
    
    
    
    
    
    
    
    %Load data
    load('Spectrogram_Recall_Correct_ITG.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Recall_Correct_ITG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_FG.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Recall_Correct_FG.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_IPL.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Recall_Correct_IPL.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_IPS.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Recall_Correct_IPS.mat'),'PowerVals');
    clear RegXData
    
    load('Spectrogram_Recall_Correct_HIPP.mat');
    PowerVals = SpectrogramCalc_HighGamma(RegXData);
    save(strcat(StrSavePowerVals,'Spectrogram_HighGamma_Recall_Correct_HIPP.mat'),'PowerVals');
    clear RegXData
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    