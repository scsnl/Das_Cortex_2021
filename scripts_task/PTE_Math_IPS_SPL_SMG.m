    %Anup Das
    %18 October, 2019
    %This program calculates PTE

    close all;
    clear all; 
    clc;

    StrData = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Generated_Data/IPS_SPL_SMG/';

    StrSavePTEVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/IPS_SPL_SMG/';
    
    %Math
    load(strcat(StrData, 'Correct_ITGIPS_ITG'));
    load(strcat(StrData, 'Correct_ITGIPS_IPS'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_IPS.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_IPS_ITG.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
    load(strcat(StrData, 'Correct_FGIPS_FG'));
    load(strcat(StrData, 'Correct_FGIPS_IPS'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_FG_IPS.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_IPS_FG.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    

    load(strcat(StrData, 'Correct_IPLIPS_IPL'));
    load(strcat(StrData, 'Correct_IPLIPS_IPS'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPL_IPS.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_IPS_IPL.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    load(strcat(StrData, 'Correct_IPSSPL_IPS'));
    load(strcat(StrData, 'Correct_IPSSPL_SPL'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPS_SPL.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SPL_IPS.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    load(strcat(StrData, 'Correct_IPSSMG_IPS'));
    load(strcat(StrData, 'Correct_IPSSMG_SMG'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPS_SMG.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SMG_IPS.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    load(strcat(StrData, 'Correct_IPSHIPP_IPS'));
    load(strcat(StrData, 'Correct_IPSHIPP_HIPP'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPS_HIPP.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_HIPP_IPS.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
    load(strcat(StrData, 'Correct_ITGSPL_ITG'));
    load(strcat(StrData, 'Correct_ITGSPL_SPL'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_SPL.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SPL_ITG.mat'),'PTEVals_21');
    
    clear RegXData RegYData


    

    load(strcat(StrData, 'Correct_FGSPL_FG'));
    load(strcat(StrData, 'Correct_FGSPL_SPL'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_FG_SPL.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SPL_FG.mat'),'PTEVals_21');
    
    clear RegXData RegYData


    
    
    load(strcat(StrData, 'Correct_IPLSPL_IPL'));
    load(strcat(StrData, 'Correct_IPLSPL_SPL'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPL_SPL.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SPL_SPL.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
    load(strcat(StrData, 'Correct_SPLSMG_SPL'));
    load(strcat(StrData, 'Correct_SPLSMG_SMG'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_SPL_SMG.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SMG_SPL.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    


    load(strcat(StrData, 'Correct_SPLHIPP_SPL'));
    load(strcat(StrData, 'Correct_SPLHIPP_HIPP'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_SPL_HIPP.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_HIPP_SPL.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
    load(strcat(StrData, 'Correct_ITGSMG_ITG'));
    load(strcat(StrData, 'Correct_ITGSMG_SMG'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_ITG_SMG.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SMG_ITG.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
    
    load(strcat(StrData, 'Correct_FGSMG_FG'));
    load(strcat(StrData, 'Correct_FGSMG_SMG'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_FG_SMG.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SMG_FG.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
    
    load(strcat(StrData, 'Correct_IPLSMG_IPL'));
    load(strcat(StrData, 'Correct_IPLSMG_SMG'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_IPL_SMG.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_SMG_IPL.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
    
    load(strcat(StrData, 'Correct_SMGHIPP_SMG'));
    load(strcat(StrData, 'Correct_SMGHIPP_HIPP'));

    [PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

    save(strcat(StrSavePTEVals,'Correct_SMG_HIPP.mat'),'PTEVals_12');
    save(strcat(StrSavePTEVals,'Correct_HIPP_SMG.mat'),'PTEVals_21');
    
    clear RegXData RegYData
    
    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    