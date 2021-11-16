function [Subj_Pairs] = PTECalc_Mixed_Effects(RegXData, RegYData)

NSubj = size(RegXData,3);

%Parameters
Subj_Indices = 0;
Subj_Pairs = [];

for i=1:NSubj
    
    TempDataX = RegXData(:,:,i);
    emptyCells = cellfun('isempty', TempDataX);
    TempDataX(all(emptyCells,2),:) = [];
    TempDataX(:,all(emptyCells,1)) = [];
    
    TempDataY = RegYData(:,:,i);
    emptyCells = cellfun('isempty', TempDataY);
    TempDataY(all(emptyCells,2),:) = [];
    TempDataY(:,all(emptyCells,1)) = [];
    
    Electrodes_Pairs_Indices = 1;
    
     if (~isempty(TempDataX) && ~isempty(TempDataY))
    
         Subj_Indices = Subj_Indices + 1;
         NElecX = size(TempDataX,1);
         NElecY = size(TempDataY,1);
         NEpochs = size(TempDataX,2);
         
         for j=1:NElecX
             
             for k=1:NElecY
                 
                 Temp = [Subj_Indices Electrodes_Pairs_Indices];
                 Subj_Pairs = [Subj_Pairs; Temp];
                 Electrodes_Pairs_Indices = Electrodes_Pairs_Indices + 1;
                 
             end
             
         end
    
     end
    
end


