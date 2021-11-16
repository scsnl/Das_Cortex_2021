%Anup Das
%18 October, 2019
%This program calculates PTE

close all;
clear all; 
clc;

addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/Generated_Data;

StrSavePTEVals = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/PTE_Results/';

%Load data
load('ITGFG_ITG.mat');
load('ITGFG_FG.mat');

[PTEVals_12, PTEVals_21] = PTECalc(RegXData, RegYData);
 
save(strcat(StrSavePTEVals,'ITG_FG.mat'),'PTEVals_12');
save(strcat(StrSavePTEVals,'FG_ITG.mat'),'PTEVals_21');







