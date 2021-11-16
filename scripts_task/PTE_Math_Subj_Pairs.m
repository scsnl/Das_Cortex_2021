    %Anup Das
    %18 October, 2019
    %This program calculates PTE

    close all;
    clear all; 
    clc;

    addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Generated_Data;

    StrSavePTEVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/';
    StrSavePowerVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Power_Results/';
    
    %Math
    load('Correct_ITGOthers_ITG');
    load('Correct_ITGOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Correct_ITG_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_Others_ITG.mat'),'PTEVals_21');

    clear RegXData RegYData
    
    
    
    
    load('Correct_FGOthers_FG');
    load('Correct_FGOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Correct_FG_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_Others_FG.mat'),'PTEVals_21');

    clear RegXData RegYData
    
 



    load('Correct_IPLOthers_IPL');
    load('Correct_IPLOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Correct_IPL_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_Others_IPL.mat'),'PTEVals_21');

    clear RegXData RegYData




    
    
    load('Correct_IPSOthers_IPS');
    load('Correct_IPSOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Correct_IPS_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_Others_IPS.mat'),'PTEVals_21');

    clear RegXData RegYData
    
    
    
    
    
    
    load('Correct_HIPPOthers_HIPP');
    load('Correct_HIPPOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Correct_HIPP_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_Others_HIPP.mat'),'PTEVals_21');

    clear RegXData RegYData
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    %Recall
    load('Recall_Correct_ITGOthers_ITG');
    load('Recall_Correct_ITGOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Recall_Correct_ITG_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Recall_Correct_Others_ITG.mat'),'PTEVals_21');

    clear RegXData RegYData
    
    
    
    
    load('Recall_Correct_FGOthers_FG');
    load('Recall_Correct_FGOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Recall_Correct_FG_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Recall_Correct_Others_FG.mat'),'PTEVals_21');

    clear RegXData RegYData
    
 



    load('Recall_Correct_IPLOthers_IPL');
    load('Recall_Correct_IPLOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Recall_Correct_IPL_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Recall_Correct_Others_IPL.mat'),'PTEVals_21');

    clear RegXData RegYData




    
    
    load('Recall_Correct_IPSOthers_IPS');
    load('Recall_Correct_IPSOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Recall_Correct_IPS_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Recall_Correct_Others_IPS.mat'),'PTEVals_21');

    clear RegXData RegYData
    
    
    
    
    
    
    load('Recall_Correct_HIPPOthers_HIPP');
    load('Recall_Correct_HIPPOthers_Others');

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
    
    save(strcat(StrSavePTEVals,'Recall_Correct_HIPP_Others.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Recall_Correct_Others_HIPP.mat'),'PTEVals_21');

    clear RegXData RegYData