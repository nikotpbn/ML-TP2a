p2 = associative_memory(p, am_target);
p2 = normalize_fun(p2, .5);


net = shallow('logsig', 'traingd', 'learnwh', 10);
net = configure(net, p2, clf_target);
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


