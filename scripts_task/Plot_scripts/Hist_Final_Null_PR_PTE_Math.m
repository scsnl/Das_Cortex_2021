%Anup Das
%18 October, 2019
%Histogram plots

close all;
clear all;
clc


    
StrSave = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Bar_Plot/Plots/PTE_Plots/Set_0/';

StrData = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/'; 



%Math
load(strcat(StrData,'Null_PR_Correct_ITG_FG.mat'));

load(strcat(StrData, 'Correct_ITG_FG.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_FG_ITG.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_ITG_FG.png'));






load(strcat(StrData,'Null_PR_Correct_ITG_IPL.mat'));

load(strcat(StrData, 'Correct_ITG_IPL.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_IPL_ITG.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_ITG_IPL.png'));







load(strcat(StrData,'Null_PR_Correct_ITG_IPS.mat'));

load(strcat(StrData, 'Correct_ITG_IPS.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_IPS_ITG.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_ITG_IPS.png'));






load(strcat(StrData,'Null_PR_Correct_ITG_HIPP.mat'));

load(strcat(StrData, 'Correct_ITG_HIPP.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_HIPP_ITG.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_ITG_HIPP.png'));




load(strcat(StrData,'Null_PR_Correct_FG_IPL.mat'));

load(strcat(StrData, 'Correct_FG_IPL.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_IPL_FG.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_FG_IPL.png'));




load(strcat(StrData,'Null_PR_Correct_FG_IPS.mat'));

load(strcat(StrData, 'Correct_FG_IPS.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_IPS_FG.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_FG_IPS.png'));






load(strcat(StrData,'Null_PR_Correct_FG_HIPP.mat'));

load(strcat(StrData, 'Correct_FG_HIPP.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_HIPP_FG.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_FG_HIPP.png'));





load(strcat(StrData,'Null_PR_Correct_IPL_IPS.mat'));

load(strcat(StrData, 'Correct_IPL_IPS.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_IPS_IPL.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_IPL_IPS.png'));






load(strcat(StrData,'Null_PR_Correct_IPL_HIPP.mat'));

load(strcat(StrData, 'Correct_IPL_HIPP.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_HIPP_IPL.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_IPL_HIPP.png'));





load(strcat(StrData,'Null_PR_Correct_IPS_HIPP.mat'));

load(strcat(StrData, 'Correct_IPS_HIPP.mat'));
Reg1_to_Reg2 = PTEVals_12;
load(strcat(StrData, 'Correct_HIPP_IPS.mat'));
Reg2_to_Reg1 = PTEVals_21;


figure('Renderer', 'painters', 'Position', [200 200 800 600]);
hist(PTE_Rand_Global, 25)
shuffle = PTE_Rand_Global;
hold on; xline(mean(shuffle) + 1.96*std(shuffle));
hold on; xline(mean(shuffle) - 1.96*std(shuffle));
hold on; xline(median(Reg1_to_Reg2), 'r', 'LineWidth', 3);
hold on; xline(median(Reg2_to_Reg1), 'g', 'LineWidth', 3);
set(gca, 'fontSize', 24);
xlabel('PTE');


saveas(gcf,strcat(StrSave,'Histogram_Math_IPS_HIPP.png'));










