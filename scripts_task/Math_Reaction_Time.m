%Anup Das
%19 August, 2020

close all
clear all
clc

StrSubj = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Subject_Indices/';

%Gather subjects
SubjIndAll = {};
load(strcat(StrSubj,'ITG_Correct.mat'));
SubjIndAll = [SubjIndAll; SubjInd];
load(strcat(StrSubj,'FG_Correct.mat'));
SubjIndAll = [SubjIndAll; SubjInd];
load(strcat(StrSubj,'IPL_Correct.mat'));
SubjIndAll = [SubjIndAll; SubjInd];
load(strcat(StrSubj,'IPS_Correct.mat'));
SubjIndAll = [SubjIndAll; SubjInd];
load(strcat(StrSubj,'HIPP_Correct.mat'));
SubjIndAll = [SubjIndAll; SubjInd];

SubjIndAll = unique(SubjIndAll);

%Store correct trials
Iscorrect_Mat_All_Global = [];

%Store reaction times
RT = [];
RT_Global = [];
   
%Extract necessary fields
for i=1:size(SubjInd,1)
    
    %Store correct trials
    Iscorrect_Mat_All_Store = [];
    
    Sampjson = strcat('/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/data/Release_20171012_data/protocols/r1/subjects/',SubjInd{i,1},'/experiments/FR1/sessions/0/ephys/current_processed/sources.json');
    SampTypes = fields(jsondecode(fileread(Sampjson)));
    Strjson = strcat('/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/data/Release_20171012_data/protocols/r1/subjects/',SubjInd{i,1},'/experiments/FR1/sessions/0/behavioral/current_processed/all_events.json');
    Taskjson = jsondecode(fileread( Strjson));
    
    for j=1:size(Taskjson,1)
        
        EEGfile{j,1} = Taskjson(j,:).eegfile;
        EEGoffset{j,1} = Taskjson(j,:).eegoffset;
        Montage{j,1} = Taskjson(j,:).montage;
        Type{j,1} = Taskjson(j,:).type;
        Iscorrect{j,1} = Taskjson(j,:).iscorrect;
        
    end
    
    if strcmp(SubjInd{i,1}, 'R1216E')
        
        SizeEEGfile = size(EEGfile,1);
        EEGfile(1:SizeEEGfile) = {'R1216E_FR1_0_15Sep16_2125'};
        
    end
    
    Math_Prob = find(ismember(Type,'PROB') == 1);
    Iscorrect_Mat = cell2mat(Iscorrect);
    Iscorrect_Mat_All = Iscorrect_Mat(Math_Prob);
    %Iscorrect_Correct = Math_Prob(Iscorrect_Mat_All==1);
    Iscorrect_Correct = Math_Prob;
    
    Iscorrect_Mat_All_Store = [Iscorrect_Mat_All_Store; Iscorrect_Mat_All];
    Iscorrect_Mat_All_Global = [Iscorrect_Mat_All_Global; 100*sum(Iscorrect_Mat_All_Store)/length(Iscorrect_Mat_All_Store)];
    
    MinLen = length(Iscorrect_Correct);
    
    for j=1:MinLen
        
        RT = [RT; cell2mat(EEGoffset(Iscorrect_Correct(j)+1)) - cell2mat(EEGoffset(Iscorrect_Correct(j)))];
        
    end
    
    RT_Global = [RT_Global; mean(RT)];
    
    clear EEGfile EEGoffset Montage Type Iscorrect
    
end
    














