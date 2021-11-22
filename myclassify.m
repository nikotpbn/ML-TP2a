function Y = myclassify(data, filled_inx)
    iv = load('interface_variables.mat');
    
    switch(iv.filter)
        case 'Associative Memory'
            switch(iv.activation_function)
                case 'Logsig'
                    % classifier = load('networks/classifiers/logsig/am_single_layer_trainlm_learnwh_logsig.mat');
                    classifier = load('networks/classifiers/logsig/shallow_am_single_layer_logsig_traingd_learnwh.mat');
                    digits = data(:,filled_inx);
                    y = sim(classifier.net, digits);
                    y = post_process_output(y);
                    a = classify(y);
                    Y = a;

                case 'Purelin'
                    classifier = load('networks/classifiers/purelin/am_single_layer_trainlm_learngd_purelin.mat');
                    digits = data(:,filled_inx);
                    y = sim(classifier.net, digits);
                    y = post_process_output(y);
                    a = classify(y);
                    Y = a;
                case 'Hardlim'
                    classifier = load('networks\classifiers\hardlim\single_layer_trainc_learnp_hardlim.mat');
                    digits = data(:, filled_inx);
                    y = sim(classifier.net, digits);
                    a = classify(y);
                    Y = a;

            end

        otherwise
            switch(iv.activation_function)
                case 'Logsig'
                    % classifier = load('networks/classifiers/logsig/single_layer_traingd_learnwh_logsig.mat');
                    % classifier = load('networks/classifiers/logsig/single_layer_trainlm_learngd_logsig.mat');
                    % classifier = load('networks/classifiers/logsig/single_layer_trainlm_learnwh_logsig.mat');
                    % classifier = load('networks/classifiers/logsig/new_single_layer_trainlm_learnwh_logsig.mat');
                    classifier = load('networks/classifiers/logsig/shallow_single_layer_logsig_traingd_learnwh.mat');
                    digits = data(:,filled_inx);
                    y = sim(classifier.net, digits);
                    y = post_process_output(y);
                    a = classify(y);
                    Y = a;

                case 'Hardlim'
                    classifier = load('networks\classifiers\hardlim\single_layer_trainc_learnp_hardlim.mat');
                    digits = data(:, filled_inx);
                    y = sim(classifier.net, digits);
                    a = classify(y);
                    Y = a;
        
                case 'Purelin'
                    % classifier = load('networks/classifiers/purelin/single_layer_trainlm_learngd_purelin.mat');
                    classifier = load('networks/classifiers/purelin/single_layer_trainlm_learnwh_purelin.mat');
                    digits = data(:,filled_inx);
                    y = sim(classifier.net, digits);
                    y = post_process_output(y);
                    a = classify(y);
                    Y = a;
            end
    end
end