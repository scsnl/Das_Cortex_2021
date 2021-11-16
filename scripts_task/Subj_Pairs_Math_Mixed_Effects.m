    %Anup Das
    %18 October, 2019
    %This program calculates PTE

    close all;
    clear all; 
    clc;

    addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Generated_Data;
    addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/Generated_Data;

    StrSavePTEVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Mixed_Effects_Results/';
    
    %Differential PTE (Math)
    load('Correct_ITGOthers_ITG.mat');
    load('Correct_ITGOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
  
    load('Correct_FGOthers_FG.mat');
    load('Correct_FGOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_FG_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    load('Correct_IPLOthers_IPL.mat');
    load('Correct_IPLOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPL_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Correct_IPSOthers_IPS.mat');
    load('Correct_IPSOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPS_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    load('Correct_HIPPOthers_HIPP.mat');
    load('Correct_HIPPOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_HIPP_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    
    
    
    %Differential PTE (Recall)
    load('Recall_Correct_ITGOthers_ITG.mat');
    load('Recall_Correct_ITGOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_ITG_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
  
    load('Recall_Correct_FGOthers_FG.mat');
    load('Recall_Correct_FGOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_FG_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    load('Recall_Correct_IPLOthers_IPL.mat');
    load('Recall_Correct_IPLOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_IPL_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Recall_Correct_IPSOthers_IPS.mat');
    load('Recall_Correct_IPSOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_IPS_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    load('Recall_Correct_HIPPOthers_HIPP.mat');
    load('Recall_Correct_HIPPOthers_Others.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_HIPP_Others.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    
    
    
    
    %PTE
    load('Correct_ITGFG_ITG.mat');
    load('Correct_ITGFG_FG.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_FG.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    load('Correct_ITGIPL_ITG.mat');
    load('Correct_ITGIPL_IPL.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_IPL.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Recall_Correct_ITGIPL_ITG.mat');
    load('Recall_Correct_ITGIPL_IPL.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_ITG_IPL.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Correct_ITGIPS_ITG.mat');
    load('Correct_ITGIPS_IPS.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_IPS.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    load('Recall_Correct_ITGIPS_ITG.mat');
    load('Recall_Correct_ITGIPS_IPS.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_ITG_IPS.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    load('Correct_ITGHIPP_ITG.mat');
    load('Correct_ITGHIPP_HIPP.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Correct_FGIPL_FG.mat');
    load('Correct_FGIPL_IPL.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_FG_IPL.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    load('Recall_Correct_FGIPL_FG.mat');
    load('Recall_Correct_FGIPL_IPL.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_FG_IPL.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Correct_FGIPS_FG.mat');
    load('Correct_FGIPS_IPS.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_FG_IPS.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Recall_Correct_FGIPS_FG.mat');
    load('Recall_Correct_FGIPS_IPS.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_FG_IPS.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    
    load('Correct_FGHIPP_FG.mat');
    load('Correct_FGHIPP_HIPP.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_FG_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    load('Correct_IPLIPS_IPL.mat');
    load('Correct_IPLIPS_IPS.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPL_IPS.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Recall_Correct_IPLIPS_IPL.mat');
    load('Recall_Correct_IPLIPS_IPS.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_IPL_IPS.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Correct_IPLHIPP_IPL.mat');
    load('Correct_IPLHIPP_HIPP.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPL_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    load('Recall_Correct_IPLHIPP_IPL.mat');
    load('Recall_Correct_IPLHIPP_HIPP.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_IPL_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    load('Correct_IPSHIPP_IPS.mat');
    load('Correct_IPSHIPP_HIPP.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPS_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    load('Recall_Correct_IPSHIPP_IPS.mat');
    load('Recall_Correct_IPSHIPP_HIPP.mat');
    
    Subj_Pairs = PTECalc_Mixed_Effects(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Recall_Correct_IPS_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData RegYData
    
    
    
    
    
    
    
    
    
    
    
    
    
    %Power
    %Math
    load('Correct_ITG.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Correct_ITG.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('Correct_FG.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Correct_FG.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('Correct_IPL.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Correct_IPL.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('Correct_IPS.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Correct_IPS.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    
    
    load('Correct_HIPP.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Correct_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    
    
    
    
    
    
    
    
    
    
    %Recall
    load('Recall_Correct_ITG.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Recall_Correct_ITG.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('Recall_Correct_FG.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Recall_Correct_FG.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('Recall_Correct_IPL.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Recall_Correct_IPL.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('Recall_Correct_IPS.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Recall_Correct_IPS.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    
    
    load('Recall_Correct_HIPP.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'Recall_Correct_HIPP.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    %Rest
    load('ITG.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'ITG.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('FG.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'FG.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('IPL.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'IPL.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    load('IPS.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'IPS.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    
    
    load('HIPP.mat');

    Subj_Pairs = PowerCalc_Mixed_Effects(RegXData);

    save(strcat(StrSavePTEVals,'HIPP.mat'),'Subj_Pairs');
    
    clear RegXData
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    