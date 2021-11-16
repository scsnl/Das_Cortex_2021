%Anup Das
%18 October, 2019
%Matrix plot

close all;
clear all;
clc

    

StrData = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/PTE_Results/';
     

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


%Math matrix
Math_Mat = zeros(5,5);

load(strcat(StrData, 'Correct_IPS_IPL.mat'));
Math_Mat(1,2) = median(PTEVals_21);
load(strcat(StrData, 'Correct_IPS_ITG.mat'));
Math_Mat(1,3) = median(PTEVals_21);
load(strcat(StrData, 'Correct_IPS_FG.mat'));
Math_Mat(1,4) = median(PTEVals_21);
load(strcat(StrData, 'Correct_IPS_HIPP.mat'));
Math_Mat(1,5) = median(PTEVals_12);


load(strcat(StrData, 'Correct_IPL_IPS.mat'));
Math_Mat(2,1) = median(PTEVals_12);
load(strcat(StrData, 'Correct_IPL_ITG.mat'));
Math_Mat(2,3) = median(PTEVals_21);
load(strcat(StrData, 'Correct_IPL_FG.mat'));
Math_Mat(2,4) = median(PTEVals_21);
load(strcat(StrData, 'Correct_IPL_HIPP.mat'));
Math_Mat(2,5) = median(PTEVals_12);

load(strcat(StrData, 'Correct_ITG_IPS.mat'));
Math_Mat(3,1) = median(PTEVals_12);
load(strcat(StrData, 'Correct_ITG_IPL.mat'));
Math_Mat(3,2) = median(PTEVals_12);
load(strcat(StrData, 'Correct_ITG_FG.mat'));
Math_Mat(3,4) = median(PTEVals_12);
load(strcat(StrData, 'Correct_ITG_HIPP.mat'));
Math_Mat(3,5) = median(PTEVals_12);


load(strcat(StrData, 'Correct_FG_IPS.mat'));
Math_Mat(4,1) = median(PTEVals_12);
load(strcat(StrData, 'Correct_FG_IPL.mat'));
Math_Mat(4,2) = median(PTEVals_12);
load(strcat(StrData, 'Correct_FG_ITG.mat'));
Math_Mat(4,3) = median(PTEVals_21);
load(strcat(StrData, 'Correct_FG_HIPP.mat'));
Math_Mat(4,5) = median(PTEVals_12);


load(strcat(StrData, 'Correct_HIPP_IPS.mat'));
Math_Mat(5,1) = median(PTEVals_21);
load(strcat(StrData, 'Correct_HIPP_IPL.mat'));
Math_Mat(5,2) = median(PTEVals_21);
load(strcat(StrData, 'Correct_HIPP_ITG.mat'));
Math_Mat(5,3) = median(PTEVals_21);
load(strcat(StrData, 'Correct_HIPP_FG.mat'));
Math_Mat(5,4) = median(PTEVals_21);





%Plot matrices
figure;
num = Math_Mat;
num(num==0)=NaN;
imAlpha=ones(size(num));
imAlpha(isnan(num))=0;
imagesc(Math_Mat,'AlphaData',imAlpha);
caxis([0.9 1.15]);
h = colorbar;
ylabel(h, 'PTE');
set(h, 'FontSize',20);
xticks([1:5])
yticks([1:5])

Label{1,1} = '\color{black}dPPC\color{magenta}\rightarrow';
Label{2,1} = '\color{black}vPPC\color{magenta}\rightarrow';
Label{3,1} = '\color{black}ITG\color{magenta}\rightarrow';
Label{4,1} = '\color{black}FG\color{magenta}\rightarrow';
Label{5,1} = '\color{black}HIPP\color{magenta}\rightarrow';

yticklabels(Label);



Label{1,1} = '\color{cyan}\rightarrow\color{black}dPPC';
Label{2,1} = '\color{cyan}\rightarrow\color{black}vPPC'; 
Label{3,1} = '\color{cyan}\rightarrow\color{black}ITG';
Label{4,1} = '\color{cyan}\rightarrow\color{black}FG';
Label{5,1} = '\color{cyan}\rightarrow\color{black}HIPP';

xticklabels(Label);
set(gca, 'xaxisLocation', 'top');
xtickangle(90);

set(gca, 'FontSize',20);





















