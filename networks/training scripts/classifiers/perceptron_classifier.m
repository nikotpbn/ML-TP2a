% filter = perceptron_filter;
% filter = configure(filter, p, am_target);
% filter = train(filter, p, am_target);

filter = perceptron;
filter = configure(filter, p, am_target);
filter = train(filter, p, am_target);

p2 = sim(filter, test_input);