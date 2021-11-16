%Anup Das
%18 October, 2019
%Top 50 connections

close all;
clear all;
clc

y_max = 1.2;
y_min = 0.7;
y_step = 0.1;

%addpath('/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results');
    
%StrSave = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Bar_Plot/Plots/';

%StrData = 'Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_task\PTE_Results\';
%StrData = 'Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_rest\PTE_Results\';
StrData = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/';
StrDataRest = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/PTE_Results/';

%StrSave = 'Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_task\Bar_Plot\Plots\PTE_Plots\Set_0\';
StrSave = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Bar_Plot/Plots/PTE_Plots/Set_0/';


PTEValsAll = [];

load(strcat(StrData, 'Correct_IPS_IPL.mat'))
IPS_IPL = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_IPS_ITG.mat'))
IPS_ITG = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_IPS_FG.mat'))
IPS_FG = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_IPS_HIPP.mat'))
IPS_HIPP = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];


load(strcat(StrData, 'Correct_IPL_IPS.mat'))
IPL_IPS = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];
load(strcat(StrData, 'Correct_IPL_ITG.mat'))
IPL_ITG = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_IPL_FG.mat'))
IPL_FG = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_IPL_HIPP.mat'))
IPL_HIPP = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];


load(strcat(StrData, 'Correct_ITG_IPS.mat'))
ITG_IPS = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];
load(strcat(StrData, 'Correct_ITG_IPL.mat'))
ITG_IPL = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];
load(strcat(StrData, 'Correct_ITG_FG.mat'))
ITG_FG = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];
load(strcat(StrData, 'Correct_ITG_HIPP.mat'))
ITG_HIPP = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];


load(strcat(StrData, 'Correct_FG_IPS.mat'))
FG_IPS = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];
load(strcat(StrData, 'Correct_FG_IPL.mat'))
FG_IPL = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];
load(strcat(StrData, 'Correct_FG_ITG.mat'))
FG_ITG = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_FG_HIPP.mat'))
FG_HIPP = PTEVals_12;
PTEValsAll = [PTEValsAll; median(PTEVals_12)];


load(strcat(StrData, 'Correct_HIPP_IPS.mat'))
HIPP_IPS = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_HIPP_IPL.mat'))
HIPP_IPL = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_HIPP_ITG.mat'))
HIPP_ITG = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];
load(strcat(StrData, 'Correct_HIPP_FG.mat'))
HIPP_FG = PTEVals_21;
PTEValsAll = [PTEValsAll; median(PTEVals_21)];





























