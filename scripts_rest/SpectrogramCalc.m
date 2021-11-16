function [PowerVals, PowerValsVec] = SpectrogramCalc(RegXData)

NSubj = size(RegXData,3);

%Define parameters
fs = 1000;
EndPoints1 = 3000;%1500
EndPoints2 = 3000;%1500

%Specify parameters for power
PowerVals = [];
PowerValsVec = [];

%Specify approximate length of resting data
Task_Len = 1800;

%Number of randomizations
N_Rand = 50;

%Specify parameters for spectrogram analysis
window_data = 250;
noverlap_data = 225;
FrVals = [0.5:1:160];

%Filters
fs=1000;

[z,p,k] = butter( 4, [117 123] ./ (fs/2), 'stop' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd_Line1=dfilt.df2sos(s,g);

[z,p,k] = butter( 4, [57 63] ./ (fs/2), 'stop' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd_Line2=dfilt.df2sos(s,g);

[z,p,k] = butter( 4, [177 183] ./ (fs/2), 'stop' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd_Line3=dfilt.df2sos(s,g);

[z,p,k] = butter( 4, 160 ./ (fs/2), 'low' );
[s,g]=zp2sos(z,p,k);%# create second order sections
Hd=dfilt.df2sos(s,g);

for i=1:NSubj
    
    TempDataX = RegXData(:,:,i);
    emptyCells = cellfun('isempty', TempDataX);
    TempDataX(all(emptyCells,2),:) = [];
    TempDataX(:,all(emptyCells,1)) = [];
    
     if (~isempty(TempDataX))
    
         NElecX = size(TempDataX,1);
         NEpochs = size(TempDataX,2);
         
         for j=1:NElecX
                 
                 PowerVec = [];
                 
                 for i_Epoch=1:NEpochs
                     
                     x1_global = TempDataX{j,i_Epoch};
                     x1_global = x1_global(EndPoints1+1:end-EndPoints2);
                     
                     Tot_Len = length(x1_global);
                     Av_Len = Tot_Len - Task_Len+1;
                     
                     PowerVec_local = [];
                     for i_Rand = 1:N_Rand
                         
                         rand_temp = randperm(Av_Len);
                         rand_ind = rand_temp(1):rand_temp(1)+Task_Len-1;
                         
                         Temp_Data = x1_global(rand_ind);
                         
                         Temp_Data = filtfilthd(Hd_Line1,Temp_Data);
                         Temp_Data = filtfilthd(Hd_Line2,Temp_Data);
                         Temp_Data = filtfilthd(Hd_Line3,Temp_Data);
                         Temp_Data = filtfilthd(Hd,Temp_Data);
                         
                         [Temp_Data_FFT, frvals_data, tvals_data, P_SIG] = spectrogram(Temp_Data, hanning(window_data), noverlap_data, FrVals, fs, 'yaxis');
                         plogsig = log10(P_SIG);
                         
                         avg = mean(plogsig(:,1:9), 2);
                         plogsig_normalized = bsxfun(@minus, plogsig, avg);
                         plogsig_normalized_line_removed = plogsig_normalized([1:55, 65:end], :);
                         avg_all = plogsig_normalized_line_removed([1:70], [10:end]);
                         PowerVec_local = [PowerVec_local; mean(avg_all(:))];
                         
                     end
                     
                     PowerVec = [PowerVec; mean(PowerVec_local)];
               
                 end
                 
                 PowerVals = [PowerVals; mean(PowerVec)];
                 PowerValsVec = [PowerValsVec; PowerVec];
             
         end
    
     end
    
end


