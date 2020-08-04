clc
clear
%% 
OrigiData=readcell('word cluster_v1.xlsx','sheet',1);
DataHead=OrigiData(1,3:6);
DataLabel=OrigiData(2:end-1,1);
DataWeight=cell2mat(OrigiData(2:end-1,2));
DataFlag=cell2mat(OrigiData(2:end-1,3:6));

for ci=1:4
TR_ind=find(DataFlag(:,ci)==1);
TR_Label=DataLabel(TR_ind);
TR_Weight=DataWeight(TR_ind);
figure
wordcloud(TR_Label,TR_Weight,'FontName','songti')
end