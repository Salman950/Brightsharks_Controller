%This script will check if the folder paths are correct for the project,
% If the folder does not exist it will create them
%% clear workspace
clc;
clear all;
%% Get Current Project
p = slproject.getCurrentProject;

%% Get Project Root
projectRoot = p.RootFolder;

%% Set locations for different folders
myDataFolder = fullfile(projectRoot,'MBD/DataFiles');
myModelFolder = fullfile(projectRoot,'MBD/ModelFiles');
myRequirementsFolder = fullfile(projectRoot,'MBD/RequirementFiles');
myCodeGenFolder = fullfile(projectRoot,'MBD/CodeGenFiles');
myMILTestFolder = fullfile(projectRoot,'MBD/MILTestFiles');%Modelling the root
mySILTestFolder = fullfile(projectRoot,'MBD/SILTestFiles');%software the root
myHILTestFolder = fullfile(projectRoot,'MBD/HILTestFiles');

%% Check if the folders are already present, If not make the directories
if ~exist(myDataFolder, 'dir')
    mkdir(myDataFolder);
end
if ~exist(myModelFolder, 'dir')
    mkdir(myModelFolder);
end
if ~exist(myRequirementsFolder,'dir')
    mkdir(myRequirementsFolder);
end
if ~exist(myCodeGenFolder, 'dir')
    mkdir(myCodeGenFolder);
end
if ~exist(myMILTestFolder,'dir')
    mkdir(myMILTestFolder);
end
if ~exist(mySILTestFolder, 'dir')
    mkdir(mySILTestFolder);
end
if ~exist(myHILTestFolder, 'dir')
    mkdir(myHILTestFolder);
end

%% Load Call backs, confirguration files, CAN Database, Calibrations
% CAN_Database(.dbc file) - Vector db++ editor

% Third party files



