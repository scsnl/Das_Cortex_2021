%Anup Das
%18 October, 2019
%This function makes violin graphs and shows the significant comparisons
%(if any) and their significance level by stars

close all;
clear all;
clc

y_max = 1.5;
y_min = -1;
y_step = 0.2;

addpath('/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task');
    
%StrSave = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Bar_Plot/Plots/';

%StrData = 'Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_task\PTE_Results\';
%StrData = 'Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_rest\PTE_Results\';
StrData = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/';
StrDataPower = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Power_Results/';
StrDataRest = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/PTE_Results/';

StrSave = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Bar_Plot/Plots/PTE_Plots/Set_0/';


color_IPS = [0 0.5 0];
color_IPL = [0 1 1];
color_ITG = [1 0 0];
color_FG = [0 0 1];
color_HIPP = [0.820000 0.410000 0.120000];

str_IPS = '#037d50';
str_IPL = '#00ffff';
str_ITG = '#c70039';
str_FG = '#0000ff';
str_HIPP = '#b5651d';


load(strcat(StrData, 'Correct_IPS_Others.mat'))
load(strcat(StrData, 'Correct_Others_IPS.mat'))
IPS = PTEVals_21 - PTEVals_12;

load(strcat(StrData, 'Correct_IPL_Others.mat'))
load(strcat(StrData, 'Correct_Others_IPL.mat'))
IPL = PTEVals_21 - PTEVals_12;

load(strcat(StrData, 'Correct_ITG_Others.mat'))
load(strcat(StrData, 'Correct_Others_ITG.mat'))
ITG = PTEVals_21 - PTEVals_12;

load(strcat(StrData, 'Correct_FG_Others.mat'))
load(strcat(StrData, 'Correct_Others_FG.mat'))
FG = PTEVals_21 - PTEVals_12;

load(strcat(StrData, 'Correct_HIPP_Others.mat'))
load(strcat(StrData, 'Correct_Others_HIPP.mat'))
HIPP = PTEVals_21 - PTEVals_12;

grp = [ones(size(IPS')), 2*ones(size(IPL')), 3*ones(size(ITG')), 4*ones(size(FG')), 5*ones(size(HIPP'))];

%Plot bar graph
SubHand = figure('Renderer', 'painters', 'Position', [200 200 1200 1000]);
hold on;
violins = violinplot([IPS', IPL', ITG', FG', HIPP'], grp);

violins(1).ViolinColor = [0 0.5 0];
violins(2).ViolinColor = [0 1 1];
violins(3).ViolinColor = [1 0 0];
violins(4).ViolinColor = [0 0 1];
violins(5).ViolinColor = [0.820000 0.410000 0.120000];

xticklabels({'dPPC', 'vPPC', 'ITG', 'FG', 'HIPP'});
ylabel('PTE(in) - PTE(out)','Fontsize', 20);
groups={[1,2], [1,3], [1,4], [1,5], [2,3], [2,5], [3,5], [4,5]};
hold on
H=sigstar_PTE(groups, [0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0.02, 0.02, 0.005]);
set(gca, 'FontSize', 20);

ylim([y_min y_max]);
set(gca,'ytick',[y_min:y_step:y_max]);
hAx=gca;
hAx.XAxis.TickLabelInterpreter='tex';           
hAx.XTickLabel(1)={['\color[rgb]{0, 0.5, 0}' hAx.XTickLabel{1}]};
hAx.XTickLabel(2)={['\color[rgb]{0, 1, 1}' hAx.XTickLabel{2}]};
hAx.XTickLabel(3)={['\color[rgb]{1, 0, 0}' hAx.XTickLabel{3}]};
hAx.XTickLabel(4)={['\color[rgb]{0, 0, 1}' hAx.XTickLabel{4}]};
hAx.XTickLabel(5)={['\color[rgb]{0.820000, 0.410000, 0.120000}' hAx.XTickLabel{5}]};


%saveas(gcf,strcat(StrSave,'Box_Figure2c.png'))

















%Input PTE to IPS
y_max = 1.8;
y_min = 0.3;
y_step = 0.2;

load(strcat(StrData, 'Correct_IPL_IPS.mat'));
IPL = PTEVals_12;

load(strcat(StrData, 'Correct_ITG_IPS.mat'));
ITG = PTEVals_12;

load(strcat(StrData, 'Correct_FG_IPS.mat'));
FG = PTEVals_12;

load(strcat(StrData, 'Correct_HIPP_IPS.mat'));
HIPP = PTEVals_21;



grp = [1*ones(size(IPL')), 2*ones(size(ITG')), 3*ones(size(FG')), 4*ones(size(HIPP'))];

%Plot bar graph
SubHand = figure('Renderer', 'painters', 'Position', [200 200 1200 1000]);
hold on;
violins = violinplot([IPL', ITG', FG', HIPP'], grp);

violins(1).ViolinColor = [0 1 1];
violins(2).ViolinColor = [1 0 0];
violins(3).ViolinColor = [0 0 1];
violins(4).ViolinColor = [0.820000 0.410000 0.120000];

xticklabels({'vPPC', 'ITG', 'FG', 'HIPP'});
ylabel('Input PTE to dPPC','Fontsize', 20);
groups={[1,2], [1,3], [1,4], [2,3]};
hold on
H=sigstar_PTE(groups, [0.0001, 0.0001, 0.0001, 0.0001]);
set(gca, 'FontSize', 20);

ylim([y_min y_max]);
set(gca,'ytick',[y_min:y_step:y_max]);
hAx=gca;
hAx.XAxis.TickLabelInterpreter='tex';           
hAx.XTickLabel(1)={['\color[rgb]{0, 1, 1}' hAx.XTickLabel{1}]};
hAx.XTickLabel(2)={['\color[rgb]{1, 0, 0}' hAx.XTickLabel{2}]};
hAx.XTickLabel(3)={['\color[rgb]{0, 0, 1}' hAx.XTickLabel{3}]};
hAx.XTickLabel(4)={['\color[rgb]{0.820000, 0.410000, 0.120000}' hAx.XTickLabel{4}]};


%saveas(gcf,strcat(StrSave,'Box_Figure2d.png'))






















%IPL vs IPS
y_max = 1.7;
y_min = 0.3;
y_step = 0.2;

load(strcat(StrData, 'Correct_ITG_IPS.mat'));
p1 = PTEVals_12;

load(strcat(StrData, 'Correct_ITG_IPL.mat'));
p2 = PTEVals_12;



grp = [1*ones(size(p1')), 2*ones(size(p2'))];

%Plot bar graph
SubHand = figure('Renderer', 'painters', 'Position', [200 200 1200 1000]);
subplot(1,3,1);
hold on;

violins = violinplot([p1', p2'], grp);

violins(1).ViolinColor = [1 0 0];
violins(2).ViolinColor = [1 0 0];

xticklabels({'dPPC', 'vPPC'});
ylabel('PTE','Fontsize', 20);
groups={[1,2]};
hold on
H=sigstar_PTE(groups, [0.0001]);
set(gca, 'FontSize', 20);

ylim([y_min y_max]);
set(gca,'ytick',[y_min:y_step:y_max]);
hAx=gca;
hAx.XAxis.TickLabelInterpreter='tex';           








load(strcat(StrData, 'Correct_FG_IPS.mat'));
p1 = PTEVals_12;

load(strcat(StrData, 'Correct_FG_IPL.mat'));
p2 = PTEVals_12;



grp = [1*ones(size(p1')), 2*ones(size(p2'))];

%Plot bar graph
subplot(1,3,2);
hold on;
violins = violinplot([p1', p2'], grp);

violins(1).ViolinColor = [0 0 1];
violins(2).ViolinColor = [0 0 1];

xticklabels({'dPPC', 'vPPC'});
ylabel('PTE','Fontsize', 20);
groups={[1,2]};
hold on
H=sigstar_PTE(groups, [0.02]);
set(gca, 'FontSize', 20);

ylim([y_min y_max]);
set(gca,'ytick',[y_min:y_step:y_max]);
hAx=gca;
hAx.XAxis.TickLabelInterpreter='tex'; 








load(strcat(StrData, 'Correct_HIPP_IPS.mat'));
p1 = PTEVals_21;

load(strcat(StrData, 'Correct_HIPP_IPL.mat'));
p2 = PTEVals_21;



grp = [1*ones(size(p1')), 2*ones(size(p2'))];

%Plot bar graph
subplot(1,3,3);
hold on;
violins = violinplot([p1', p2'], grp);

violins(1).ViolinColor = [0.820000 0.410000 0.120000];
violins(2).ViolinColor = [0.820000 0.410000 0.120000];

xticklabels({'dPPC', 'vPPC'});
ylabel('PTE','Fontsize', 20);
groups={[1,2]};
hold on
H=sigstar_PTE(groups, [0.1]);
set(gca, 'FontSize', 20);

ylim([y_min y_max]);
set(gca,'ytick',[y_min:y_step:y_max]);
hAx=gca;
hAx.XAxis.TickLabelInterpreter='tex'; 


















%Figure 4
y_max = 1.3;
y_min = -0.8;
y_step = 0.4;

load(strcat(StrData, 'Correct_IPS_Others.mat'));
load(strcat(StrData, 'Correct_Others_IPS.mat'));
p1 = PTEVals_21 - PTEVals_12;

load(strcat(StrDataRest, 'IPS_Others.mat'));
load(strcat(StrDataRest, 'Others_IPS.mat'));
p2 = PTEVals_21 - PTEVals_12;

load(strcat(StrData, 'Recall_Correct_IPS_Others.mat'));
load(strcat(StrData, 'Recall_Correct_Others_IPS.mat'));
p3 = PTEVals_21 - PTEVals_12;



grp = [1*ones(size(p1')), 2*ones(size(p2')), 3*ones(size(p3'))];

%Plot bar graph
SubHand = figure('Renderer', 'painters', 'Position', [200 200 1200 1000]);
subplot(1,2,1);
hold on;
violins = violinplot([p1', p2', p3'], grp);

violins(1).ViolinColor = [0 0.5 0];
violins(2).ViolinColor = [0 0.5 0];
violins(3).ViolinColor = [0 0.5 0];

xticklabels({'Addition', 'Rest', 'Memory recall'});
ylabel('PTE(in) - PTE(out)','Fontsize', 20);
groups={[1,2], [1,3], [2,3]};
hold on
H=sigstar_PTE(groups, [0.0001, 0.0001, 0.0001]);
set(gca, 'FontSize', 20);

ylim([y_min y_max]);
set(gca,'ytick',[y_min:y_step:y_max]);
hAx=gca;
hAx.XAxis.TickLabelInterpreter='tex';





load(strcat(StrData, 'Correct_IPL_Others.mat'));
load(strcat(StrData, 'Correct_Others_IPL.mat'));
p1 = PTEVals_21 - PTEVals_12;

load(strcat(StrDataRest, 'IPL_Others.mat'));
load(strcat(StrDataRest, 'Others_IPL.mat'));
p2 = PTEVals_21 - PTEVals_12;

load(strcat(StrData, 'Recall_Correct_IPL_Others.mat'));
load(strcat(StrData, 'Recall_Correct_Others_IPL.mat'));
p3 = PTEVals_21 - PTEVals_12;



grp = [1*ones(size(p1')), 2*ones(size(p2')), 3*ones(size(p3'))];

%Plot bar graph
subplot(1,2,2);
hold on;
violins = violinplot([p1', p2', p3'], grp);

violins(1).ViolinColor = [0 1 1];
violins(2).ViolinColor = [0 1 1];
violins(3).ViolinColor = [0 1 1];

xticklabels({'Addition', 'Rest', 'Memory recall'});
ylabel('PTE(in) - PTE(out)','Fontsize', 20);
groups={[1,3]};
hold on
H=sigstar_PTE(groups, [0.02]);
set(gca, 'FontSize', 20);

ylim([y_min y_max]);
set(gca,'ytick',[y_min:y_step:y_max]);
hAx=gca;
hAx.XAxis.TickLabelInterpreter='tex';


























