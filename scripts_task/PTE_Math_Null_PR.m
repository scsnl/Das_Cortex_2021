    %Anup Das
    %16 July, 2021
    %This program does surrogate analysis

    close all;
    clear all; 
    clc;

    addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Generated_Data;

    StrSavePTEVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/';    
    
    %Math
    load('Correct_ITGFG_ITG');
    load('Correct_ITGFG_FG');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_ITG_FG.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    

    load('Correct_ITGIPL_ITG');
    load('Correct_ITGIPL_IPL');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_ITG_IPL.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    load('Correct_ITGIPS_ITG');
    load('Correct_ITGIPS_IPS');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_ITG_IPS.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    load('Correct_ITGHIPP_ITG');
    load('Correct_ITGHIPP_HIPP');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_ITG_HIPP.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    load('Correct_FGIPL_FG');
    load('Correct_FGIPL_IPL');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_FG_IPL.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    load('Correct_FGIPS_FG');
    load('Correct_FGIPS_IPS');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_FG_IPS.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    load('Correct_FGHIPP_FG');
    load('Correct_FGHIPP_HIPP');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_FG_HIPP.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    load('Correct_IPLIPS_IPL');
    load('Correct_IPLIPS_IPS');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_IPL_IPS.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    load('Correct_IPLHIPP_IPL');
    load('Correct_IPLHIPP_HIPP');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_IPL_HIPP.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    load('Correct_IPSHIPP_IPS');
    load('Correct_IPSHIPP_HIPP');

    [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Null_PR_Correct_IPS_HIPP.mat'),'PTE_Rand_Global');

    clear RegXData RegYData
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    








