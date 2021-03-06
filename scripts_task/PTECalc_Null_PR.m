function [PTE_Rand_Global] = PTECalc_Null_PR(RegXData, RegYData)

NSubj = size(RegXData,3);

%Define parameters
fs = 1000;
EndPoints1 = 0;%1500
EndPoints2 = 0;%1500

%Store PTE
PTE_Rand_Global = [];

%Filter
[z,p,k] = butter( 4, [0.5 80] ./ (fs/2), 'bandpass' );
[s,g]=zp2sos(z,p,k);%# create second order sections
HdBP=dfilt.df2sos(s,g);

[z,p,k] = butter( 4, [57 63] ./ (fs/2), 'stop' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd1=dfilt.df2sos(s,g);

for i=1:NSubj
    
    TempDataX = RegXData(:,:,i);
    emptyCells = cellfun('isempty', TempDataX);
    TempDataX(all(emptyCells,2),:) = [];
    TempDataX(:,all(emptyCells,1)) = [];
    
    TempDataY = RegYData(:,:,i);
    emptyCells = cellfun('isempty', TempDataY);
    TempDataY(all(emptyCells,2),:) = [];
    TempDataY(:,all(emptyCells,1)) = [];
    
     if (~isempty(TempDataX) && ~isempty(TempDataY))
    
         NElecX = size(TempDataX,1);
         NElecY = size(TempDataY,1);
         NEpochs = size(TempDataX,2);
         
         for j=1:NElecX
             
             for k=1:NElecY
                 
                 for i_Epoch=1:NEpochs
                     
                     Ch1 = TempDataX{j,i_Epoch};
                     Ch2 = TempDataY{k,i_Epoch};
                     
                     Ch1 = Ch1(EndPoints1+1:end-EndPoints2);
                     Ch2 = Ch2(EndPoints1+1:end-EndPoints2);
                     
                     BandFilt_1 = filtfilthd(HdBP,zscore(Ch1));
                     BandFilt_2 = filtfilthd(HdBP,zscore(Ch2));
                     
                     BandFilt_1 = filtfilthd(Hd1,zscore(BandFilt_1));
                     BandFilt_2 = filtfilthd(Hd1,zscore(BandFilt_2));
                     
                     Ch1filtscore = zscore(BandFilt_1);
                     Ch2filtscore = zscore(BandFilt_2);
                     
                     %Gather data
                     X = [Ch1filtscore Ch2filtscore];
                     
                     %Calculate PTE
                     [PTE_Rand, dPTE, PTE, delay, Nbins, binsize] = PhaseTE_MF_New_Null(X);
                     
                     PTE_Rand_Global = [PTE_Rand_Global; PTE_Rand];
                     
                 end
                 
             end
             
         end
    
     end
    
end


