%Anup Das
%29 October, 2018
%This program plots electrodes for specified brain regions on a brain
%surface plot

close all;
clear all;
clc;

addpath Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_task\legendflex;
addpath Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_task\legendflex\legendflex;
addpath Y:\projects\a1das\2018_ECoG_Math_Project\scripts\Release_20171012_scripts\scripts_task\legendflex\setgetpos_V1.2;

%load all files
load('SurfacePlotCoord_ITG.mat');
ITG = SurfacePlotCoord_ITG;
load('SurfacePlotCoord_FG.mat');
FG = SurfacePlotCoord_FG;
load('SurfacePlotCoord_IPL.mat');
IPL = SurfacePlotCoord_IPL;
load('SurfacePlotCoord_IPS.mat');
IPS = SurfacePlotCoord_IPS ;
load('SurfacePlotCoord_HIPP.mat');
HIPP = SurfacePlotCoord_HIPP;

load('FacesLeft.mat')
load('FacesRight.mat')
load('NodesLeft.mat')
load('NodesRight.mat')
load('Hemisphere.mat')

L_ITG = ITG(find(ITG(:,1)<0),:);
R_ITG = ITG(find(ITG(:,1)>0),:);
L_FG = FG(find(FG(:,1)<0),:);
R_FG = FG(find(FG(:,1)>0),:);
L_IPL = IPL(find(IPL(:,1)<0),:);
R_IPL = IPL(find(IPL(:,1)>0),:);
L_IPS = IPS(find(IPS(:,1)<0),:);
R_IPS = IPS(find(IPS(:,1)>0),:);
L_HIPP = HIPP(find(HIPP(:,1)<0),:);
R_HIPP = HIPP(find(HIPP(:,1)>0),:);


figure
p=patch('faces',FacesRight,'vertices',NodesRight, 'facecolor',...
    [0.781 0.762 0.664],  'edgecolor', 'none', 'facealpha', 0.2);

facecolor = repmat([1 1 1], length(FacesRight), 1);
set(p,'FaceVertexCData',facecolor);

daspect([1 1 1])
view(3); axis tight
view([-0.24283662322663,-208.1215211487066,1310.41813190201])%view([50 -40 100])

material shiny
camlight('headlight')
lighting gouraud; axis off

hold all;
plot3(R_ITG(:,1),R_ITG(:,2),R_ITG(:,3),...
    'r.','markersize',20);
plot3(R_FG(:,1),R_FG(:,2),R_FG(:,3),...
    'b.','markersize',20);
plot3(R_IPS(:,1),R_IPS(:,2),R_IPS(:,3),...
    'linestyle','none','marker','.','color',[0 0.5 0],'markersize',20);
plot3(R_IPL(:,1),R_IPL(:,2),R_IPL(:,3),...
    'c.','markersize',20);
plot3(R_HIPP(:,1),R_HIPP(:,2),R_HIPP(:,3),...
    'linestyle','none','marker','.','color',[0.820000 0.410000 0.120000],'markersize',20);
hold off

p=patch('faces',FacesLeft,'vertices',NodesLeft, 'facecolor',...
    [0.781 0.762 0.664],  'edgecolor', 'none', 'facealpha', 0.2);

facecolor = repmat([1 1 1], length(FacesLeft), 1);
set(p,'FaceVertexCData',facecolor);

daspect([1 1 1])
view(3); axis tight
view([-0.24283662322663,-208.1215211487066,1310.41813190201])%view([50 -40 100])

material shiny
camlight('headlight')
lighting gouraud; axis off

hold all;
plot3(L_ITG(:,1),L_ITG(:,2),L_ITG(:,3),...
    'r.','markersize',20);
plot3(L_FG(:,1),L_FG(:,2),L_FG(:,3),...
    'b.','markersize',20);
plot3(L_IPS(:,1),L_IPS(:,2),L_IPS(:,3),...
    'linestyle','none','marker','.','color',[0 0.5 0],'markersize',20);
plot3(L_IPL(:,1),L_IPL(:,2),L_IPL(:,3),...
    'c.','markersize',20);
plot3(L_HIPP(:,1),L_HIPP(:,2),L_HIPP(:,3),...
    'linestyle','none','marker','.','color',[0.820000 0.410000 0.120000],'markersize',20);
hold off


figure
p=patch('faces',FacesRight,'vertices',NodesRight, 'facecolor',...
    [0.781 0.762 0.664],  'edgecolor', 'none', 'facealpha', 0.2);

facecolor = repmat([1 1 1], length(FacesRight), 1);
set(p,'FaceVertexCData',facecolor);

daspect([1 1 1])
view(3); axis tight
view([1172.52429235214,-70.182417825913035,236.9780617227996])%view([50 -40 100])

material shiny
camlight('headlight')
lighting gouraud; axis off

hold all;
plot3(R_ITG(:,1),R_ITG(:,2),R_ITG(:,3),...
    'r.','markersize',20);
plot3(R_FG(:,1),R_FG(:,2),R_FG(:,3),...
    'b.','markersize',20);
plot3(R_IPS(:,1),R_IPS(:,2),R_IPS(:,3),...
    'linestyle','none','marker','.','color',[0 0.5 0],'markersize',20);
plot3(R_IPL(:,1),R_IPL(:,2),R_IPL(:,3),...
    'c.','markersize',20);
plot3(R_HIPP(:,1),R_HIPP(:,2),R_HIPP(:,3),...
    'linestyle','none','marker','.','color',[0.820000 0.410000 0.120000],'markersize',20);
hold off


fig1=figure;
p=patch('faces',FacesLeft,'vertices',NodesLeft, 'facecolor',...
    [0.781 0.762 0.664],  'edgecolor', 'none', 'facealpha', 0.2);

facecolor = repmat([1 1 1], length(FacesLeft), 1);
set(p,'FaceVertexCData',facecolor);

daspect([1 1 1])
view(3); axis tight
view([-1103.1,77.3889,452.4818])%view([50 -40 100])

material shiny
camlight('headlight')
lighting gouraud; axis off

hold all;
h1 = plot3(L_ITG(:,1),L_ITG(:,2),L_ITG(:,3),...
    'r.','markersize',20);
h2 = plot3(L_FG(:,1),L_FG(:,2),L_FG(:,3),...
    'b.','markersize',20);
h3 = plot3(L_IPS(:,1),L_IPS(:,2),L_IPS(:,3),...
    'linestyle','none','marker','.','color',[0 0.5 0],'markersize',20);
h4 = plot3(L_IPL(:,1),L_IPL(:,2),L_IPL(:,3),...
    'c.','markersize',20);
h5 = plot3(L_HIPP(:,1),L_HIPP(:,2),L_HIPP(:,3),...
    'linestyle','none','marker','.','color',[0.820000 0.410000 0.120000],'markersize',20);

fig2 = figure;
[~, objh]=legendflex([h1 h2 h4 h3 h5], {'ITG','FG','vPPC','dPPC','HIPP'}, 'ref', fig2,'Fontsize', 18);
objhl = findobj(objh, 'type', 'line');
set(objhl, 'Markersize', 60); 
hold off



