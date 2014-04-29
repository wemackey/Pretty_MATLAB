%% Transparent Background
jDesktop = com.mathworks.mde.desk.MLDesktop.getInstance.getMainFrame;
desktop = com.mathworks.mde.desk.MLDesktop.getInstance;
jEditor = desktop.getGroupContainer('Editor').getTopLevelAncestor;
com.sun.awt.AWTUtilities.setWindowOpacity(jDesktop, 0.79);
com.sun.awt.AWTUtilities.setWindowOpacity(jEditor, 0.79);
clear

%% Set the number display and format
format long g
format compact

%% System Colours
jsetupColours('monokai');
    
%% Figure properties
% Position and size
set(0,'DefaultFigurePosition', [25 550 500 400]);
set(0,'DefaultFigureColor','w')
set(0,'DefaultAxesColor','w');
% Fonts
set(0, 'DefaultAxesFontSize', 9);
set(0, 'DefaultAxesFontName', 'Helvetica');
set(0, 'DefaultAxesFontWeight','bold');
% LineStyles
% set(0,'DefaultAxesLineStyleOrder','-|--|:')
set(0,'DefaultLineLineWidth', 0.65);

%% Toggle grids on/off for all axis.
set(0,'defaultAxesXGrid','off');
set(0,'defaultAxesYGrid','off');
set(0,'defaultAxesZGrid','off');

%% Automatically jump to debugging mode when hitting an error instead of just reporting the error and clearing it
dbstop if error