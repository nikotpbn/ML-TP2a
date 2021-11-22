path = genpath('extra functions');
addpath(path);
path = genpath('networks');
addpath(path);
path = genpath('olddataset');
addpath(path);

% Load inputs script at '\extra functions' folder
load_input();

% Discover how many times the target matrix needs to be replicated
n = size(p, 2) / 10;
test_n = size(test_input, 2) / 10;
load('PerfectArial.mat');

% Create targets for Associative Memory and Classifier
% being the Associative Memory target the Perfect Algarisms
% and the classifier target an identity matrix
am_target = repmat(Perfect,1,n);
clf_target = repmat(eye(10),1,n);
test_target = repmat([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1, test_n);

% clear unecessary variables
clear Perfect;
clear test_n;
clear path;
clear ans;
clear n;