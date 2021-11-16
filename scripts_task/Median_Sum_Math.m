%Anup Das
%7 October, 2019
%Make data for math task

close all
clear all
clc

addpath(genpath('/oak/stanford/groups/menon/software/spm8/'))

%Brainnetome roiFile
roiFile_Brainnetome = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/scripts/Release_20171012_scripts/scripts_rest/BN_Atlas_246_2mm.nii';

%Brainnetome brain region indices
Math_Regions_1 = [89:102, 103:108, 135:136, 143:144, 125:134, 137:138, 139:142, 145:146, 215:218];

%Store sums
Sum_Global = [];

%load MNI coordinates from UPenn data
load('MNIAllSubjectFilledBipolar.mat');

%load files
load('FileListBipolarSherlock.mat')
load('ChIDBipolarArtifactRemove.mat')

%Extract folder names from FileList
for i=1:size(FileList,1)
    
    FolderNames{i,1} = FileList(i,:).folder;
    
end

NSubjects = size(MNIAllSubjectFilledBipolar,1);
isFilledCell1 = cell(NSubjects,1);
isFilledCell2 = cell(NSubjects,1);
is1 = zeros(NSubjects,1);
is2 = zeros(NSubjects,1);

for i_Subject = 1:NSubjects
    
    temp1 = 0;
    
    for j_Comb_Ind = 1:length(Math_Regions_1)
        
        temp1 = temp1 + FindRegionHO(MNIAllSubjectFilledBipolar{i_Subject,1}, roiFile_Brainnetome, Math_Regions_1(j_Comb_Ind));
        
    end
    
    if sum(temp1)>0
        is1(i_Subject)=1;
    end
    isFilledCell1{i_Subject,1}=temp1;
    
end

Inter_Index = find(is1==1);

%Extract subject indices
if ~isempty(Inter_Index)
    
    for i=1:length(Inter_Index)
        
        d = dir(FileList(Inter_Index(i)).folder);
        SubjDir = d(1).folder;
        SubjInd{i,1} = SubjDir(114:119);
        
    end
    SubjInd = unique(SubjInd);
    
    %Find subjects with FR1
    count=1;
    for i=1:length(SubjInd)
        
        StrSub = strcat('/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/data/Release_20171012_data/protocols/r1/subjects/',SubjInd{i,1},'/experiments/FR1/sessions/0');
        
        if 7==exist(StrSub)
            
            SubjIndTemp{count,1} = SubjInd{i,:};
            count=count+1;
            
        end
        
    end
    
end

if exist('SubjIndTemp')
    
    SubjInd = SubjIndTemp;
    
    %Remove subjects with issues  
    if ~isempty(find(ismember(SubjInd,'R1192C')==1))
        
        SubjInd(find(ismember(SubjInd,'R1192C')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1198M')==1))
        
        SubjInd(find(ismember(SubjInd,'R1198M')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1208C')==1))
        
        SubjInd(find(ismember(SubjInd,'R1208C')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1229M')==1))
        
        SubjInd(find(ismember(SubjInd,'R1229M')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1281E')==1))
        
        SubjInd(find(ismember(SubjInd,'R1281E')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1307N')==1))
        
        SubjInd(find(ismember(SubjInd,'R1307N')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1308T')==1))
        
        SubjInd(find(ismember(SubjInd,'R1308T')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1309M')==1))
        
        SubjInd(find(ismember(SubjInd,'R1309M')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1311T')==1))
        
        SubjInd(find(ismember(SubjInd,'R1311T')==1),:) = [];
        
    end
    
    if ~isempty(find(ismember(SubjInd,'R1313J')==1))
        
        SubjInd(find(ismember(SubjInd,'R1313J')==1),:) = [];
        
    end
    
else
    
    SubjInd = [];
    
end

if (~isempty(SubjInd))
    
    %Extract necessary fields
    for i=1:size(SubjInd,1)
        
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
            Test{j,1} = Taskjson(j,:).test;
            
        end
        
        if strcmp(SubjInd{i,1}, 'R1216E')
            
            SizeEEGfile = size(EEGfile,1);
            EEGfile(1:SizeEEGfile) = {'R1216E_FR1_0_15Sep16_2125'};
            
        end
        
        Math_Prob = find(ismember(Type,'PROB') == 1);
        Iscorrect_Mat = cell2mat(Iscorrect);
        Iscorrect_Mat_All = Iscorrect_Mat(Math_Prob);
        Iscorrect_Correct = Math_Prob(Iscorrect_Mat_All==1);

        MinLen = length(Iscorrect_Correct);
        
        for j=1:MinLen
            
            Sum_Global = [Sum_Global; sum(Test{Iscorrect_Correct(j),1})]; 
            
        end
        
        clear EEGfile EEGoffset Montage Type Iscorrect Test
        
    end
    
    %clear cells
    clear RegXData isFilledCell1 SubjInd SubjIndTemp
    
end

median(Sum_Global)
%15










