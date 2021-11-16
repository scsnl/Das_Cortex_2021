    %Anup Das
    %18 October, 2019
    %This program calculates PTE

    close all;
    clear all; 
    clc;

    addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Generated_Data;

    StrSavePTEVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/';
    StrSavePowerVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Power_Results/';
    
    %Recall
    load('Recall_Correct_ITGIPL_ITG.mat');
    load('Recall_Correct_ITGIPL_IPL.mat');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_ITG_IPL.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Recall_Correct_IPL_ITG.mat'),'PTEVals_21');

    clear RegXData RegYData



    %Math
    load('Correct_ITGIPL_ITG.mat');
    load('Correct_ITGIPL_IPL.mat');
    
    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_IPL.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_IPL_ITG.mat'),'PTEVals_21');

    clear RegXData RegYData









