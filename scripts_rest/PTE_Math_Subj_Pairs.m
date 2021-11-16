%Anup Das
%18 October, 2019
%This program calculates PTE

close all;
clear all; 
clc;

addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/Generated_Data;

StrSavePTEVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/PTE_Results/';

%Math
load('ITGOthers_ITG');
load('ITGOthers_Others');

[PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

save(strcat(StrSavePTEVals,'ITG_Others.mat'),'PTEVals_12');
save(strcat(StrSavePTEVals,'Others_ITG.mat'),'PTEVals_21');

clear RegXData RegYData




load('FGOthers_FG');
load('FGOthers_Others');

[PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

save(strcat(StrSavePTEVals,'FG_Others.mat'),'PTEVals_12');
save(strcat(StrSavePTEVals,'Others_FG.mat'),'PTEVals_21');

clear RegXData RegYData





load('IPLOthers_IPL');
load('IPLOthers_Others');

[PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

save(strcat(StrSavePTEVals,'IPL_Others.mat'),'PTEVals_12');
save(strcat(StrSavePTEVals,'Others_IPL.mat'),'PTEVals_21');

clear RegXData RegYData






load('IPSOthers_IPS');
load('IPSOthers_Others');

[PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

save(strcat(StrSavePTEVals,'IPS_Others.mat'),'PTEVals_12');
save(strcat(StrSavePTEVals,'Others_IPS.mat'),'PTEVals_21');

clear RegXData RegYData






load('HIPPOthers_HIPP');
load('HIPPOthers_Others');

[PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);

save(strcat(StrSavePTEVals,'HIPP_Others.mat'),'PTEVals_12');
save(strcat(StrSavePTEVals,'Others_HIPP.mat'),'PTEVals_21');

clear RegXData RegYData
    
    
    
    
    
    
    
    
    
    
    
    







