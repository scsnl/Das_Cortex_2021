%Anup Das
%4 October, 2019
%Length of the math trials

close all
clear all
clc

addpath(genpath('/oak/stanford/groups/menon/software/spm8/'))

%Brainnetome roiFile
roiFile_Brainnetome = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/scripts/Release_20171012_scripts/scripts_rest/BN_Atlas_246_2mm.nii';

%Brainnetome HIPP indices
Math_Regions = [89:108, 135:146, 215:218];

%load MNI coordinates from UPenn data
load('MNIAllSubjectFilledBipolar.mat');

%load files
load('FileListBipolarSherlock.mat')
load('ChIDBipolarArtifactRemove.mat')

%Extract folder names from FileList
for i=1:size(FileList,1)
    
    FolderNames{i,1} = FileList(i,:).folder;
    
end

%save variables
StrSaveResults = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/';

Math_Length_Global = [];

NSubjects = size(MNIAllSubjectFilledBipolar,1);
isinterDMNFilledCell1 = cell(NSubjects,1);
isinterDMN1 = zeros(NSubjects,1);

for i_Subject = 1:NSubjects
    
    temp1 = 0;
    
    for j_Comb_Ind = 1:length(Math_Regions)
        
        temp1 = temp1 + FindRegionHO(MNIAllSubjectFilledBipolar{i_Subject,1}, roiFile_Brainnetome, Math_Regions(j_Comb_Ind));
        
    end
    
    if sum(temp1)>0
        isinterDMN1(i_Subject)=1;
    end
    isinterDMNFilledCell1{i_Subject,1}=temp1;
    
end

Inter_Index = find(isinterDMN1==1);

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
    if ~isempty(find(ismember(SubjInd,'R1185N')==1))
        
        SubjInd(find(ismember(SubjInd,'R1185N')==1),:) = [];
        
    end
    
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
            
        end
        
        if strcmp(SubjInd{i,1}, 'R1216E')
            
            SizeEEGfile = size(EEGfile,1);
            EEGfile(1:SizeEEGfile) = {'R1216E_FR1_0_15Sep16_2125'};
            
        end
        
        Math_Prob = find(ismember(Type,'PROB') == 1);
        
        %Extract length
        for i_Math_Prob = 1:length(Math_Prob)
            
            Math_Length_Global = [Math_Length_Global; cell2mat(EEGoffset(Math_Prob(i_Math_Prob)+1)) - cell2mat(EEGoffset(Math_Prob(i_Math_Prob)))];
            
        end  
        
        clear EEGfile EEGoffset Montage Type
        
    end
    
    %clear cells
    clear RegXData isinterDMNFilledCell1 SubjInd SubjIndTemp
    
end

save('Math_Length_Global.mat','Math_Length_Global');



