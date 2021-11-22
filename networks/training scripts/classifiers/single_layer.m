% Best configs:
% 'trainlm','learnwh','logsig' at 0.42 - 0.45 lr (okay test)
% 'traingd','learnwh','logsig' at 0.42 - 0.45 lr (okay test)

% 'trainlm','learngd','purelin' at 0.42 - 0.45 lr (okay test)

% 'traingd','learngdm','logsig'
% 'trainc','learngd','logsig'

%net = single_layer_shallow('traingd','learnwh','logsig', p, clf_target);

net = shallow('logsig', 'traingd', 'learnwh', 10);
net = configure(net, p, clf_target);

net = train(net, p, clf_target);

y = sim(net, test_input);
y = post_process_output(y);
output = classify(y);


stairs(output);
hold on;
stairs(test_target);
hold off;

confusion_mat = confusionmat(test_target', output);
confusionchart(confusion_mat);

[c_matrixp,Result]= confusion.getMatrix(test_target,output);


