%Anup Das
%4 July, 2020
%Spectrogram analysis for the math regions

close all
clear all
clc

addpath(genpath('/oak/stanford/groups/menon/software/spm8/'))

%Brainnetome roiFile
roiFile_Brainnetome = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/scripts/Release_20171012_scripts/scripts_rest/BN_Atlas_246_2mm.nii';

%Brainnetome brain region indices
Math_Regions_1 = [89:102];%ITG
%Math_Regions_1 = [103:108];%FG
%Math_Regions_1 = [135:136, 143:144];%IPL
%Math_Regions_1 = [125:134, 137:138, 139:142, 145:146];%IPS
%Math_Regions_1 = [215:218];%HIPP

%load MNI coordinates from UPenn data
load('MNIAllSubjectFilledBipolar.mat');

%load files
load('FileListBipolarSherlock.mat')
load('ChIDBipolarArtifactRemove.mat')

%Extract folder names from FileList
for i=1:size(FileList,1)
    
    FolderNames{i,1} = FileList(i,:).folder;
    
end

%Specify number of samples for pre- and post-stimulus periods
Post_Stim_Samples = 1600;
Discard_Samples = 10000;
Base_Samples = 300;
Pre_Stim_Samples = 500;
Data_Include_Samples = 200;

%Specify parameters for spectrogram analysis
window_data = 250;
noverlap_data = 225;
FrVals = [0.5:1:160];

%Filters
fs=1000;

[z,p,k] = butter( 4, [117 123] ./ (fs/2), 'stop' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd_Line1=dfilt.df2sos(s,g);

fs = 1000;
[z,p,k] = butter( 4, [57 63] ./ (fs/2), 'stop' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd_Line2=dfilt.df2sos(s,g);

fs = 1000;
[z,p,k] = butter( 4, [177 183] ./ (fs/2), 'stop' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd_Line3=dfilt.df2sos(s,g);

[z,p,k] = butter( 4, 160 ./ (fs/2), 'low' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd=dfilt.df2sos(s,g);

%save variables
StrSaveData = '/oak/stanford/groups/menon/projects/a1das/2018_ECoG_Math_Project/scripts/Release_20171012_scripts/scripts_task/Spectrogram_Results/';

%Store spectrogram values    
Count_Global = 0;

NSubjects = size(MNIAllSubjectFilledBipolar,1);
isFilledCell1 = cell(NSubjects,1);
is1 = zeros(NSubjects,1);

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
            
        end
        
        if strcmp(SubjInd{i,1}, 'R1216E')
            
            SizeEEGfile = size(EEGfile,1);
            EEGfile(1:SizeEEGfile) = {'R1216E_FR1_0_15Sep16_2125'};
            
        end
        
        Math_Prob = find(ismember(Type,'PROB') == 1);
        Iscorrect_Mat = cell2mat(Iscorrect);
        Iscorrect_Mat_All = Iscorrect_Mat(Math_Prob);
        Iscorrect_Correct = Math_Prob(Iscorrect_Mat_All==1);
        
        StrData = strcat('/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/data/Release_20171012_data/protocols/r1/subjects/',SubjInd{i,1},'/experiments/FR1/sessions/0/ephys/current_processed/noreref/');
        
        N_Samples1236 = 3218660;
        N_Samples1230 = 3334835;
        N_Samples1207 = 3622806;
        
        MinLen = length(Iscorrect_Correct);
        
        for j=1:MinLen
            
            FileIdx = strcat('/oak/stanford/groups/menon/projects/a1das/2018_ECoG_DMN_Project/data/Release_20171012_data/protocols/r1/subjects/',SubjInd{i,1},'/localizations/',Montage{Iscorrect_Correct(j),1}(1,1),'/montages/',Montage{Iscorrect_Correct(j),1}(1,3),'/neuroradiology/current_processed');
            MNICoordIdx = find(ismember(FolderNames,FileIdx) == 1);
            ChIDVec = ChID{MNICoordIdx,1};
            RegXVec = isFilledCell1{MNICoordIdx,1};
            RegXIdx = find(RegXVec==1);
            
            %Do for RegX
            for i_RegX = 1:length(RegXIdx)
                
                ChIDNum1 = ChIDVec(RegXIdx(i_RegX),1);
                ChIDNum2 = ChIDVec(RegXIdx(i_RegX),2);
                
                if ((ChIDNum1~=0) && (ChIDNum2~=0))
                    
                    if numel(num2str(ChIDNum1))==1
                        
                        ChIDTemp1 = char(strcat('00',num2str(ChIDNum1)));
                        
                    end
                    
                    if numel(num2str(ChIDNum1))==2
                        
                        ChIDTemp1 = char(strcat('0',num2str(ChIDNum1)));
                        
                    end
                    
                    if numel(num2str(ChIDNum1))==3
                        
                        ChIDTemp1 = char(num2str(ChIDNum1));
                        
                    end
                    
                    
                    
                    
                    
                    if numel(num2str(ChIDNum2))==1
                        
                        ChIDTemp2 = char(strcat('00',num2str(ChIDNum2)));
                        
                    end
                    
                    if numel(num2str(ChIDNum2))==2
                        
                        ChIDTemp2 = char(strcat('0',num2str(ChIDNum2)));
                        
                    end
                    
                    if numel(num2str(ChIDNum2))==3
                        
                        ChIDTemp2 = char(num2str(ChIDNum2));
                        
                    end
                    
                    i_EEGfile = strcat(StrData,EEGfile{Iscorrect_Correct(j),:},'.',ChIDTemp1);
                    d=dir(i_EEGfile);
                    fileID = fopen(strcat(d.folder,'/',d.name));
                    A1 = fread(fileID,inf,'int16');
                    fclose('all');
                    
                    i_EEGfile = strcat(StrData,EEGfile{Iscorrect_Correct(j),:},'.',ChIDTemp2);
                    d=dir(i_EEGfile);
                    fileID = fopen(strcat(d.folder,'/',d.name));
                    A2 = fread(fileID,inf,'int16');
                    fclose('all');
                    
                    if strcmp(SubjInd{i,1}, 'R1207J')
                        
                        A1 = A1(1:N_Samples1207);
                        A2 = A2(1:N_Samples1207);
                        
                    end
                    
                    if strcmp(SubjInd{i,1}, 'R1230J')
                        
                        A1 = A1(1:N_Samples1230);
                        A2 = A2(1:N_Samples1230);
                        
                    end
                    
                    if strcmp(SubjInd{i,1}, 'R1236J')
                        
                        A1 = A1(1:N_Samples1236);
                        A2 = A2(1:N_Samples1236);
                        
                    end
                    
                    %Bipolar referencing
                    A=A1-A2;
                
                    %Extract data
                    if ((cell2mat(EEGoffset(Iscorrect_Correct(j)+1)) - cell2mat(EEGoffset(Iscorrect_Correct(j))) >= Post_Stim_Samples) &&  (cell2mat(EEGoffset(Iscorrect_Correct(j)+1)) - cell2mat(EEGoffset(Iscorrect_Correct(j))) < Discard_Samples))
  
                        %Spectrogram of signal
                        Temp_Data = A(cell2mat(EEGoffset(Iscorrect_Correct(j)))-Data_Include_Samples+1:cell2mat(EEGoffset(Iscorrect_Correct(j))) + Post_Stim_Samples);
                        
                        Temp_Data = filtfilthd(Hd_Line1,Temp_Data);
                        Temp_Data = filtfilthd(Hd_Line2,Temp_Data);
                        Temp_Data = filtfilthd(Hd_Line3,Temp_Data);
                        Temp_Data = filtfilthd(Hd,Temp_Data);
                        
                        [Temp_Data_FFT, frvals_data, tvals_data, P_SIG] = spectrogram(Temp_Data, hanning(window_data), noverlap_data, FrVals, fs, 'yaxis');
                        plogsig = log10(P_SIG);

                        Count_Global = Count_Global + 1;
                        Spectrogram_Mat_Original_Global(:,:,Count_Global) = plogsig;
                        
                    end
                
                end
                
            end
            
        end
        
        clear EEGfile EEGoffset Montage Type
        
    end

    save(strcat(StrSaveData,'Cortex_ITG_Math_Spectrogram_Mat_Original_Global.mat'), 'Spectrogram_Mat_Original_Global');
    
    %clear cells
    clear RegXData isFilledCell1 SubjInd SubjIndTemp
    
end
    









