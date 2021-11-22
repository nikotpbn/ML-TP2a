load_struct_data(load('olddataset\user_1.mat'));
load_struct_data(load('olddataset\user_2.mat'));
load_struct_data(load('olddataset\user_3.mat'));

p = [c00 ...
     n00, n02, n03, n04, n05...
     j00, j02, j03, j04, j05, j06, j07];

test_input = [c01 n01 j01];

clear c00 c01;
clear n00 n01 n02 n03 n04 n05;
clear j00 j01 j02 j03 j04 j05 j06 j07;