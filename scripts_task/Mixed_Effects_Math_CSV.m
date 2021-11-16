%Anup Das
%16 May, 2021
%This program generates CSV files for mixed effects model analysis in R

close all;
clear all;
clc;

%Generate .csv file
StrTask = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/';
StrRest =  '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/PTE_Results/';
StrTaskPower =  '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Power_Results/';
StrRestPower =  '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/Power_Results/';
addpath /oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_rest/Power_Results;
StrMixed = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Mixed_Effects_Results/';

StrSave = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/CSV_Results/';

%Differential PTE
load(strcat(StrTask, 'Correct_ITG_Others.mat'));
load(strcat(StrTask, 'Correct_Others_ITG.mat'));
ITG = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Correct_FG_Others.mat'));
load(strcat(StrTask, 'Correct_Others_FG.mat'));
FG = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Correct_IPL_Others.mat'));
load(strcat(StrTask, 'Correct_Others_IPL.mat'));
IPL = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Correct_IPS_Others.mat'));
load(strcat(StrTask, 'Correct_Others_IPS.mat'));
IPS = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Correct_HIPP_Others.mat'));
load(strcat(StrTask, 'Correct_Others_HIPP.mat'));
HIPP = PTEVals_21 - PTEVals_12;





%ITG/FG/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_FG_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [ITG; FG];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(ITG),1) = cellstr('ITG');
Regions(length(ITG)+1:...
    length(ITG) + length(FG),1) = cellstr('FG');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_ITG_FG.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 






%ITG/IPL/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPL_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [ITG; IPL];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(ITG),1) = cellstr('ITG');
Regions(length(ITG)+1:...
    length(ITG) + length(IPL),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_ITG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 











%ITG/IPS/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPS_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [ITG; IPS];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(ITG),1) = cellstr('ITG');
Regions(length(ITG)+1:...
    length(ITG) + length(IPS),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_ITG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 







%ITG/HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_HIPP_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [ITG; HIPP];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(ITG),1) = cellstr('ITG');
Regions(length(ITG)+1:...
    length(ITG) + length(HIPP),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_ITG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 






%FG/IPL/Math/Correct
load(strcat(StrMixed, 'Correct_FG_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPL_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [FG; IPL];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(FG),1) = cellstr('FG');
Regions(length(FG)+1:...
    length(FG) + length(IPL),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_FG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 










%FG/IPS/Math/Correct
load(strcat(StrMixed, 'Correct_FG_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPS_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [FG; IPS];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(FG),1) = cellstr('FG');
Regions(length(FG)+1:...
    length(FG) + length(IPS),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_FG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 











%FG/HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_FG_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_HIPP_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [FG; HIPP];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(FG),1) = cellstr('FG');
Regions(length(FG)+1:...
    length(FG) + length(HIPP),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_FG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 









%IPL/IPS/Math/Correct
load(strcat(StrMixed, 'Correct_IPL_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPS_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL; IPS];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL),1) = cellstr('IPL');
Regions(length(IPL)+1:...
    length(IPL) + length(IPS),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPL_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 








%IPL/HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_IPL_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_HIPP_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL; HIPP];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL),1) = cellstr('IPL');
Regions(length(IPL)+1:...
    length(IPL) + length(HIPP),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPL_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 











%IPS/HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_IPS_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_HIPP_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS; HIPP];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS),1) = cellstr('IPS');
Regions(length(IPS)+1:...
    length(IPS) + length(HIPP),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 























%Input to IPS
%ITG/FG/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_FG_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_ITG_IPS.mat'));
Matrix = PTEVals_12;
p1 = PTEVals_12;
load(strcat(StrTask, 'Correct_FG_IPS.mat'));
Matrix = [Matrix; PTEVals_12];
p2 = PTEVals_12;

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(p1),1) = cellstr('ITG');
Regions(length(p1)+1:...
    length(p1) + length(p2),1) = cellstr('FG');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Input_ITG_FG.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%ITG/IPL/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPL_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_ITG_IPS.mat'));
Matrix = PTEVals_12;
p1 = PTEVals_12;
load(strcat(StrTask, 'Correct_IPL_IPS.mat'));
Matrix = [Matrix; PTEVals_12];
p2 = PTEVals_12;

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(p1),1) = cellstr('ITG');
Regions(length(p1)+1:...
    length(p1) + length(p2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Input_ITG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%ITG/HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_ITG_IPS.mat'));
Matrix = PTEVals_12;
load(strcat(StrTask, 'Correct_HIPP_IPS.mat'));
Matrix = [Matrix; PTEVals_21];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PTEVals_12),1) = cellstr('ITG');
Regions(length(PTEVals_12)+1:...
    length(PTEVals_12) + length(PTEVals_21),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Input_ITG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%FG/IPL/Math/Correct
load(strcat(StrMixed, 'Correct_FG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPL_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_FG_IPS.mat'));
Matrix = PTEVals_12;
p1 = PTEVals_12;
load(strcat(StrTask, 'Correct_IPL_IPS.mat'));
Matrix = [Matrix; PTEVals_12];
p2 = PTEVals_12;

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(p1),1) = cellstr('FG');
Regions(length(p1)+1:...
    length(p1) + length(p2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Input_FG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%FG/HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_FG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_FG_IPS.mat'));
Matrix = PTEVals_12;
load(strcat(StrTask, 'Correct_HIPP_IPS.mat'));
Matrix = [Matrix; PTEVals_21];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PTEVals_12),1) = cellstr('FG');
Regions(length(PTEVals_12)+1:...
    length(PTEVals_12) + length(PTEVals_21),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Input_FG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%IPL/HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_IPL_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_IPL_IPS.mat'));
Matrix = PTEVals_12;
load(strcat(StrTask, 'Correct_HIPP_IPS.mat'));
Matrix = [Matrix; PTEVals_21];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PTEVals_12),1) = cellstr('IPL');
Regions(length(PTEVals_12)+1:...
    length(PTEVals_12) + length(PTEVals_21),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Input_IPL_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





















%Input to IPS vs. IPL
%ITG/Math/Correct
load(strcat(StrMixed, 'Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_ITG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_ITG_IPS.mat'));
Matrix = PTEVals_12;
p1 = PTEVals_12;
load(strcat(StrTask, 'Correct_ITG_IPL.mat'));
Matrix = [Matrix; PTEVals_12];
p2 = PTEVals_12;

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(p1),1) = cellstr('IPS');
Regions(length(p1)+1:...
    length(p1) + length(p2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_IPL_Input_ITG.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%FG/Math/Correct
load(strcat(StrMixed, 'Correct_FG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_FG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_FG_IPS.mat'));
Matrix = PTEVals_12;
p1 = PTEVals_12;
load(strcat(StrTask, 'Correct_FG_IPL.mat'));
Matrix = [Matrix; PTEVals_12];
p2 = PTEVals_12;

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(p1),1) = cellstr('IPS');
Regions(length(p1)+1:...
    length(p1) + length(p2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_IPL_Input_FG.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%HIPP/Math/Correct
load(strcat(StrMixed, 'Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Correct_IPL_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

load(strcat(StrTask, 'Correct_HIPP_IPS.mat'));
Matrix = PTEVals_21;
p1 = PTEVals_21;
load(strcat(StrTask, 'Correct_HIPP_IPL.mat'));
Matrix = [Matrix; PTEVals_21];
p2 = PTEVals_21;

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(p1),1) = cellstr('IPS');
Regions(length(p1)+1:...
    length(p1) + length(p2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_IPL_Input_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix
















%Conditions compare
%IPS
%math vs recall
load(strcat(StrTask, 'Correct_IPS_Others.mat'));
load(strcat(StrTask, 'Correct_Others_IPS.mat'));
IPS_math = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_IPS_Others.mat'));
load(strcat(StrTask, 'Recall_Correct_Others_IPS.mat'));
IPS_recall = PTEVals_21 - PTEVals_12;

load(strcat(StrMixed, 'Correct_IPS_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 






%math vs rest
load(strcat(StrTask, 'Correct_IPS_Others.mat'));
load(strcat(StrTask, 'Correct_Others_IPS.mat'));
IPS_math = PTEVals_21 - PTEVals_12;

load(strcat(StrRest, 'IPS_Others.mat'));
load(strcat(StrRest, 'Others_IPS.mat'));
IPS_rest = PTEVals_21 - PTEVals_12;

load(strcat(StrMixed, 'Correct_IPS_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 






%rest vs recall
load(strcat(StrRest, 'IPS_Others.mat'));
load(strcat(StrRest, 'Others_IPS.mat'));
IPS_rest = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_IPS_Others.mat'));
load(strcat(StrTask, 'Recall_Correct_Others_IPS.mat'));
IPS_recall = PTEVals_21 - PTEVals_12;

load(strcat(StrMixed, 'Recall_Correct_IPS_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_rest; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_rest),1) = cellstr('Rest');
Regions(length(IPS_rest)+1:...
    length(IPS_rest) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPS_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%IPL
%math vs recall
load(strcat(StrTask, 'Correct_IPL_Others.mat'));
load(strcat(StrTask, 'Correct_Others_IPL.mat'));
IPL_math = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_IPL_Others.mat'));
load(strcat(StrTask, 'Recall_Correct_Others_IPL.mat'));
IPL_recall = PTEVals_21 - PTEVals_12;

load(strcat(StrMixed, 'Correct_IPL_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPL_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPL_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 






%math vs rest
load(strcat(StrTask, 'Correct_IPL_Others.mat'));
load(strcat(StrTask, 'Correct_Others_IPL.mat'));
IPL_math = PTEVals_21 - PTEVals_12;

load(strcat(StrRest, 'IPL_Others.mat'));
load(strcat(StrRest, 'Others_IPL.mat'));
IPL_rest = PTEVals_21 - PTEVals_12;

load(strcat(StrMixed, 'Correct_IPL_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPL_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPL_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 






%rest vs recall
load(strcat(StrRest, 'IPL_Others.mat'));
load(strcat(StrRest, 'Others_IPL.mat'));
IPL_rest = PTEVals_21 - PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_IPL_Others.mat'));
load(strcat(StrTask, 'Recall_Correct_Others_IPL.mat'));
IPL_recall = PTEVals_21 - PTEVals_12;

load(strcat(StrMixed, 'Recall_Correct_IPL_Others.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPL_Others.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_rest; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_rest),1) = cellstr('Rest');
Regions(length(IPL_rest)+1:...
    length(IPL_rest) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_IPL_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 























%HIPP to IPS
%math vs recall
load(strcat(StrTask, 'Correct_HIPP_IPS.mat'));
IPS_math = PTEVals_21;

load(strcat(StrTask, 'Recall_Correct_HIPP_IPS.mat'));
IPS_recall = PTEVals_21;

load(strcat(StrMixed, 'Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_HIPP_to_IPS_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%math vs rest
load(strcat(StrTask, 'Correct_HIPP_IPS.mat'));
IPS_math = PTEVals_21;

load(strcat(StrRest, 'HIPP_IPS.mat'));
IPS_rest = PTEVals_21;

load(strcat(StrMixed, 'Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_HIPP_to_IPS_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%rest vs recall
load(strcat(StrRest, 'HIPP_IPS.mat'));
IPS_rest = PTEVals_21;

load(strcat(StrTask, 'Recall_Correct_HIPP_IPS.mat'));
IPS_recall = PTEVals_21;

load(strcat(StrMixed, 'Recall_Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_rest; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_rest),1) = cellstr('Rest');
Regions(length(IPS_rest)+1:...
    length(IPS_rest) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_HIPP_to_IPS_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%HIPP to IPL
%math vs recall
load(strcat(StrTask, 'Correct_HIPP_IPL.mat'));
IPL_math = PTEVals_21;

load(strcat(StrTask, 'Recall_Correct_HIPP_IPL.mat'));
IPL_recall = PTEVals_21;

load(strcat(StrMixed, 'Correct_IPL_HIPP.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPL_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_HIPP_to_IPL_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%math vs rest
load(strcat(StrTask, 'Correct_HIPP_IPL.mat'));
IPL_math = PTEVals_21;

load(strcat(StrRest, 'HIPP_IPL.mat'));
IPL_rest = PTEVals_21;

load(strcat(StrMixed, 'Correct_IPL_HIPP.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPL_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_HIPP_to_IPL_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%rest vs recall
load(strcat(StrRest, 'HIPP_IPL.mat'));
IPL_rest = PTEVals_21;

load(strcat(StrTask, 'Recall_Correct_HIPP_IPL.mat'));
IPL_recall = PTEVals_21;

load(strcat(StrMixed, 'Recall_Correct_IPL_HIPP.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPL_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_rest; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_rest),1) = cellstr('Rest');
Regions(length(IPL_rest)+1:...
    length(IPL_rest) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_HIPP_to_IPL_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 



























%ITG to IPS
%math vs recall
load(strcat(StrTask, 'Correct_ITG_IPS.mat'));
IPS_math = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_ITG_IPS.mat'));
IPS_recall = PTEVals_12;

load(strcat(StrMixed, 'Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_ITG_to_IPS_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%math vs rest
load(strcat(StrTask, 'Correct_ITG_IPS.mat'));
IPS_math = PTEVals_12;

load(strcat(StrRest, 'ITG_IPS.mat'));
IPS_rest = PTEVals_12;

load(strcat(StrMixed, 'Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_ITG_to_IPS_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%rest vs recall
load(strcat(StrRest, 'ITG_IPS.mat'));
IPS_rest = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_ITG_IPS.mat'));
IPS_recall = PTEVals_12;

load(strcat(StrMixed, 'Recall_Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_ITG_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_rest; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_rest),1) = cellstr('Rest');
Regions(length(IPS_rest)+1:...
    length(IPS_rest) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_ITG_to_IPS_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%ITG to IPL
%math vs recall
load(strcat(StrTask, 'Correct_ITG_IPL.mat'));
IPL_math = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_ITG_IPL.mat'));
IPL_recall = PTEVals_12;

load(strcat(StrMixed, 'Correct_ITG_IPL.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_ITG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_ITG_to_IPL_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%math vs rest
load(strcat(StrTask, 'Correct_ITG_IPL.mat'));
IPL_math = PTEVals_12;

load(strcat(StrRest, 'ITG_IPL.mat'));
IPL_rest = PTEVals_12;

load(strcat(StrMixed, 'Correct_ITG_IPL.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_ITG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_ITG_to_IPL_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%rest vs recall
load(strcat(StrRest, 'ITG_IPL.mat'));
IPL_rest = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_ITG_IPL.mat'));
IPL_recall = PTEVals_12;

load(strcat(StrMixed, 'Recall_Correct_ITG_IPL.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_ITG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_rest; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_rest),1) = cellstr('Rest');
Regions(length(IPL_rest)+1:...
    length(IPL_rest) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_ITG_to_IPL_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix




























%FG to IPS
%math vs recall
load(strcat(StrTask, 'Correct_FG_IPS.mat'));
IPS_math = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_FG_IPS.mat'));
IPS_recall = PTEVals_12;

load(strcat(StrMixed, 'Correct_FG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_FG_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_FG_to_IPS_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%math vs rest
load(strcat(StrTask, 'Correct_FG_IPS.mat'));
IPS_math = PTEVals_12;

load(strcat(StrRest, 'FG_IPS.mat'));
IPS_rest = PTEVals_12;

load(strcat(StrMixed, 'Correct_FG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_FG_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_math; IPS_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_math),1) = cellstr('Math');
Regions(length(IPS_math)+1:...
    length(IPS_math) + length(IPS_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_FG_to_IPS_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%rest vs recall
load(strcat(StrRest, 'FG_IPS.mat'));
IPS_rest = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_FG_IPS.mat'));
IPS_recall = PTEVals_12;

load(strcat(StrMixed, 'Recall_Correct_FG_IPS.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_FG_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPS_rest; IPS_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPS_rest),1) = cellstr('Rest');
Regions(length(IPS_rest)+1:...
    length(IPS_rest) + length(IPS_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_FG_to_IPS_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%FG to IPL
%math vs recall
load(strcat(StrTask, 'Correct_FG_IPL.mat'));
IPL_math = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_FG_IPL.mat'));
IPL_recall = PTEVals_12;

load(strcat(StrMixed, 'Correct_FG_IPL.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_FG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_FG_to_IPL_Math_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





%math vs rest
load(strcat(StrTask, 'Correct_FG_IPL.mat'));
IPL_math = PTEVals_12;

load(strcat(StrRest, 'FG_IPL.mat'));
IPL_rest = PTEVals_12;

load(strcat(StrMixed, 'Correct_FG_IPL.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_FG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_math; IPL_rest];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_math),1) = cellstr('Math');
Regions(length(IPL_math)+1:...
    length(IPL_math) + length(IPL_rest),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_FG_to_IPL_Math_Rest_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix 





%rest vs recall
load(strcat(StrRest, 'FG_IPL.mat'));
IPL_rest = PTEVals_12;

load(strcat(StrTask, 'Recall_Correct_FG_IPL.mat'));
IPL_recall = PTEVals_12;

load(strcat(StrMixed, 'Recall_Correct_FG_IPL.mat'));
Subj_Pairs_Stack = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_FG_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix = [IPL_rest; IPL_recall];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(IPL_rest),1) = cellstr('Rest');
Regions(length(IPL_rest)+1:...
    length(IPL_rest) + length(IPL_recall),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'PTE' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_From_FG_to_IPL_Rest_Recall_Compare.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






























%Power
%Remove outliers
load(strcat(StrTaskPower, 'Correct_ITG_Broadband_PTE.mat'));
ITG = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_FG_Broadband_PTE.mat'));
FG = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_IPL_Broadband_PTE.mat'));
IPL = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
IPS = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_HIPP_Broadband_PTE.mat'));
HIPP = PowerVals_Broadband_PTE;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers = PowerVals_All_Vec(find(PowerVals_All_Ind==1));




%Broadband
load(strcat(StrTaskPower, 'Correct_ITG_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_FG_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('FG');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_FG_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Correct_ITG_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_IPL_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_IPL_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_ITG_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_IPS_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_ITG_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_HIPP_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_HIPP_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_FG_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_IPL_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_FG_IPL_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_FG_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_FG_IPS_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_FG_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_HIPP_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_FG_HIPP_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix




load(strcat(StrTaskPower, 'Correct_IPL_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_IPL_IPS_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Correct_IPL_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_HIPP_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_IPL_HIPP_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Correct_HIPP_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPS');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_IPS_HIPP_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix




























%HighGamma
%Remove outliers
load(strcat(StrTaskPower, 'Correct_ITG_HighGamma.mat'));
ITG = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_FG_HighGamma.mat'));
FG = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_IPL_HighGamma.mat'));
IPL = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
IPS = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_HIPP_HighGamma.mat'));
HIPP = PowerVals_HighGamma;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers = PowerVals_All_Vec(find(PowerVals_All_Ind==1));






load(strcat(StrTaskPower, 'Correct_ITG_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_FG_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('FG');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_FG_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Correct_ITG_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_IPL_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_IPL_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_ITG_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_IPS_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_ITG_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_HIPP_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_ITG_HIPP_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_FG_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_IPL_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_FG_IPL_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_FG_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_FG_IPS_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_FG_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_HIPP_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_FG_HIPP_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix




load(strcat(StrTaskPower, 'Correct_IPL_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_IPL_IPS_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Correct_IPL_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_HIPP_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_IPL_HIPP_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Correct_HIPP_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPS');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_IPS_HIPP_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix































%Power condition comparison
%Broadband
%Remove outliers
load(strcat(StrTaskPower, 'Correct_ITG_Broadband_PTE.mat'));
ITG = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_FG_Broadband_PTE.mat'));
FG = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_IPL_Broadband_PTE.mat'));
IPL = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
IPS = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Correct_HIPP_Broadband_PTE.mat'));
HIPP = PowerVals_Broadband_PTE;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers_Math = PowerVals_All_Vec(find(PowerVals_All_Ind==1));



load(strcat(StrTaskPower, 'Recall_Correct_ITG_Broadband_PTE.mat'));
ITG = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Recall_Correct_FG_Broadband_PTE.mat'));
FG = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Recall_Correct_IPL_Broadband_PTE.mat'));
IPL = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Recall_Correct_IPS_Broadband_PTE.mat'));
IPS = PowerVals_Broadband_PTE;

load(strcat(StrTaskPower, 'Recall_Correct_HIPP_Broadband_PTE.mat'));
HIPP = PowerVals_Broadband_PTE;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers_Recall = PowerVals_All_Vec(find(PowerVals_All_Ind==1));



load(strcat(StrRestPower, 'ITG_Broadband_PTE.mat'));
ITG = PowerVals_Broadband_PTE;

load(strcat(StrRestPower, 'FG_Broadband_PTE.mat'));
FG = PowerVals_Broadband_PTE;

load(strcat(StrRestPower, 'IPL_Broadband_PTE.mat'));
IPL = PowerVals_Broadband_PTE;

load(strcat(StrRestPower, 'IPS_Broadband_PTE.mat'));
IPS = PowerVals_Broadband_PTE;

load(strcat(StrRestPower, 'HIPP_Broadband_PTE.mat'));
HIPP = PowerVals_Broadband_PTE;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers_Rest = PowerVals_All_Vec(find(PowerVals_All_Ind==1));


%Math vs Recall
load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Recall_Correct_IPS_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

PowerVals_1_Temp = PowerVals_1;
PowerVals_2_Temp = PowerVals_2;
PowerVals_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1)) = [];
Subj_Pairs_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1), :) = [];
Subj_Pairs_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1), :) = [];
Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_dPPC_Math_Recall_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix







%Math vs Rest
load(strcat(StrTaskPower, 'Correct_IPS_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrRestPower, 'IPS_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

PowerVals_1_Temp = PowerVals_1;
PowerVals_2_Temp = PowerVals_2;
PowerVals_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Rest)==1)) = [];
Subj_Pairs_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1), :) = [];
Subj_Pairs_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Rest)==1), :) = [];
Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_dPPC_Math_Rest_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






%Rest vs Recall
load(strcat(StrRestPower, 'IPS_Broadband_PTE.mat'));
PowerVals_1 = PowerVals_Broadband_PTE;
load(strcat(StrTaskPower, 'Recall_Correct_IPS_Broadband_PTE.mat'));
PowerVals_2 = PowerVals_Broadband_PTE;


load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

PowerVals_1_Temp = PowerVals_1;
PowerVals_2_Temp = PowerVals_2;
PowerVals_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Rest)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1)) = [];
Subj_Pairs_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Rest)==1), :) = [];
Subj_Pairs_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1), :) = [];
Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Rest');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_dPPC_Rest_Recall_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





























%HighGamma
%Remove outliers
load(strcat(StrTaskPower, 'Correct_ITG_HighGamma.mat'));
ITG = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_FG_HighGamma.mat'));
FG = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_IPL_HighGamma.mat'));
IPL = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
IPS = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Correct_HIPP_HighGamma.mat'));
HIPP = PowerVals_HighGamma;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers_Math = PowerVals_All_Vec(find(PowerVals_All_Ind==1));



load(strcat(StrTaskPower, 'Recall_Correct_ITG_HighGamma.mat'));
ITG = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Recall_Correct_FG_HighGamma.mat'));
FG = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Recall_Correct_IPL_HighGamma.mat'));
IPL = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Recall_Correct_IPS_HighGamma.mat'));
IPS = PowerVals_HighGamma;

load(strcat(StrTaskPower, 'Recall_Correct_HIPP_HighGamma.mat'));
HIPP = PowerVals_HighGamma;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers_Recall = PowerVals_All_Vec(find(PowerVals_All_Ind==1));



load(strcat(StrRestPower, 'ITG_HighGamma.mat'));
ITG = PowerVals_HighGamma;

load(strcat(StrRestPower, 'FG_HighGamma.mat'));
FG = PowerVals_HighGamma;

load(strcat(StrRestPower, 'IPL_HighGamma.mat'));
IPL = PowerVals_HighGamma;

load(strcat(StrRestPower, 'IPS_HighGamma.mat'));
IPS = PowerVals_HighGamma;

load(strcat(StrRestPower, 'HIPP_HighGamma.mat'));
HIPP = PowerVals_HighGamma;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers_Rest = PowerVals_All_Vec(find(PowerVals_All_Ind==1));


%Math vs Recall
load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Recall_Correct_IPS_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

PowerVals_1_Temp = PowerVals_1;
PowerVals_2_Temp = PowerVals_2;
PowerVals_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1)) = [];
Subj_Pairs_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1), :) = [];
Subj_Pairs_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1), :) = [];
Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_dPPC_Math_Recall_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix







%Math vs Rest
load(strcat(StrTaskPower, 'Correct_IPS_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrRestPower, 'IPS_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

PowerVals_1_Temp = PowerVals_1;
PowerVals_2_Temp = PowerVals_2;
PowerVals_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Rest)==1)) = [];
Subj_Pairs_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Math)==1), :) = [];
Subj_Pairs_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Rest)==1), :) = [];
Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_dPPC_Math_Rest_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






%Rest vs Recall
load(strcat(StrRestPower, 'IPS_HighGamma.mat'));
PowerVals_1 = PowerVals_HighGamma;
load(strcat(StrTaskPower, 'Recall_Correct_IPS_HighGamma.mat'));
PowerVals_2 = PowerVals_HighGamma;


load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

PowerVals_1_Temp = PowerVals_1;
PowerVals_2_Temp = PowerVals_2;
PowerVals_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Rest)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1)) = [];
Subj_Pairs_1(find(ismember(PowerVals_1_Temp, PowerVals_All_Outliers_Rest)==1), :) = [];
Subj_Pairs_2(find(ismember(PowerVals_2_Temp, PowerVals_All_Outliers_Recall)==1), :) = [];
Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Rest');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Correct_Power_dPPC_Rest_Recall_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix









































%Spectrogram power
%Remove outliers
load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
ITG = PowerVals;

load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
FG = PowerVals;

load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
IPL = PowerVals;

load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
IPS = PowerVals;

load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
HIPP = PowerVals;

%Find and remove outliers
PowerVals_All_Vec = [ITG; FG; IPL; IPS; HIPP];
[PowerVals_All_Rem, PowerVals_All_Ind] = rmoutliers(PowerVals_All_Vec);
PowerVals_All_Outliers = PowerVals_All_Vec(find(PowerVals_All_Ind==1));




%Broadband
load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('FG');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_FG.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_FG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_FG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_FG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix




load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_IPL_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_IPL_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];

Matrix_Temp = Matrix;
Matrix(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1)) = [];
Subj_Pairs_Stack(find(ismember(Matrix_Temp, PowerVals_All_Outliers)==1), :) = [];
PowerVals_1(find(ismember(PowerVals_1, PowerVals_All_Outliers)==1)) = [];
PowerVals_2(find(ismember(PowerVals_2, PowerVals_All_Outliers)==1)) = [];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPS');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_IPS_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






































%Math
%Spectrogram power
%Broadband
load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('FG');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_FG.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_ITG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_FG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_FG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_FG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix




load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_IPL_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Spectrogram_Correct_IPL.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_IPL_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPS');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_IPS_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix










































%Spectrogram highgamma power
%Broadband
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_FG.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('FG');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_ITG_FG.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPL.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_ITG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_ITG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_ITG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_ITG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('ITG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_ITG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPL.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPL');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_FG_IPL.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_FG_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_FG.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_FG.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('FG');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_FG_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix




load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPL.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPS.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('IPS');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_IPL_IPS.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPL.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPL.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPL');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_IPL_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_HIPP.mat'));
PowerVals_2 = PowerVals;
Matrix = [PowerVals_1; PowerVals_2];


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_Stack = [Subj_Pairs];
load(strcat(StrMixed, 'Correct_HIPP.mat'));
Subj_Pairs_Stack = [Subj_Pairs_Stack; Subj_Pairs];


Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('IPS');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('HIPP');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_HighGamma_Correct_Power_IPS_HIPP.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





























%Spectrogram power condition comparison
%Broadband
%Math vs Recall
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Recall_Correct_IPS.mat'));
PowerVals_2 = PowerVals;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_dPPC_Math_Recall_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix







%Math vs Rest
load(strcat(StrTaskPower, 'Spectrogram_Correct_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrRestPower, 'Spectrogram_IPS.mat'));
PowerVals_2 = PowerVals;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_dPPC_Math_Rest_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






%Rest vs Recall
load(strcat(StrRestPower, 'Spectrogram_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_Recall_Correct_IPS.mat'));
PowerVals_2 = PowerVals;


load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;


Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Rest');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_dPPC_Rest_Recall_Broadband.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix





























%HighGamma
%Math vs Recall
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Recall_Correct_IPS.mat'));
PowerVals_2 = PowerVals;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;

Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_dPPC_Math_Recall_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix







%Math vs Rest
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Correct_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrRestPower, 'Spectrogram_HighGamma_IPS.mat'));
PowerVals_2 = PowerVals;


load(strcat(StrMixed, 'Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;


Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Math');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Rest');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_dPPC_Math_Rest_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix






%Rest vs Recall
load(strcat(StrRestPower, 'Spectrogram_HighGamma_IPS.mat'));
PowerVals_1 = PowerVals;
load(strcat(StrTaskPower, 'Spectrogram_HighGamma_Recall_Correct_IPS.mat'));
PowerVals_2 = PowerVals;


load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_1 = Subj_Pairs;
load(strcat(StrMixed, 'Recall_Correct_IPS.mat'));
Subj_Pairs_2 = Subj_Pairs;


Matrix = [PowerVals_1; PowerVals_2];
Subj_Pairs_Stack = [Subj_Pairs_1; Subj_Pairs_2];

Matrix = [Matrix Subj_Pairs_Stack];
Matrix_Cell = num2cell(Matrix);
Regions = {};
Regions(1:length(PowerVals_1),1) = cellstr('Rest');
Regions(length(PowerVals_1)+1:...
    length(PowerVals_1) + length(PowerVals_2),1) = cellstr('Recall');
Matrix_Cell = [Regions Matrix_Cell];
Matrix_Table = cell2table(Matrix_Cell);
Matrix_Table.Properties.VariableNames = {'Condition' 'Power' 'Subject' 'Pair'};
writetable(Matrix_Table, strcat(StrSave, 'Spectrogram_Correct_Power_dPPC_Rest_Recall_HighGamma.csv'));

clear Matrix_Table Matrix_Cell Regions Subj_Pairs_Stack Matrix