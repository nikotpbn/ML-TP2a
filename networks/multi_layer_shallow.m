function net = multi_layer_shallow(trainFcn, learnFcn, transferFcn, p, t)
    net = network;
    net.name = 'OCR Multi Layer Classifier';
    
    net.plotFcns = {'plotconfusion',...
                    'plotperform',...
                    'plottrainstate',...
                    'plotregression',...
                    'plotroc'};
    
    % Training, Validation and Testing sets
    net.divideFcn = 'divideblock';
    net.divideParam.trainRatio = 0.8;
    net.divideParam.valRatio = 0.2;
    net.divideParam.testRatio = 0;
    
    % Network architecture
    net.numInputs = 1;
    net.numLayers = 2;
    net.biasConnect(1) = 1;
    net.biasConnect(2) = 1;
    net.inputConnect(1,1) = 1;
    net.outputConnect(2) = 1;
    net.layerConnect(2, 1) = 1;
    net.trainFcn = trainFcn;
    
    net.performParam.lr = 0.42; % learning rate
    net.trainParam.epochs = 1000; % maximum epochs
    net.trainParam.show = 35; % show
    net.trainParam.goal = 1e-6; % goal=objective
    net.performFcn = 'sse'; % criterion
    net.initFcn = 'initlay';
    
    % Layer 1 Configuration
    net.layers{1}.size = 20;
    net.layers{1}.transferFcn = transferFcn;
    net.biases{1}.learnFcn = learnFcn;
    net.layers{1}.initFcn = 'initwb';
    net.inputWeights{1,1}.initFcn = 'rands';
    net.biases{1}.initFcn = 'rands';

    % Layer 2 Configuration
    net.layers{2}.size = 10;
    net.layers{2}.transferFcn = transferFcn;
    net.biases{2}.learnFcn = learnFcn;
    net.layers{2}.initFcn = 'initwb';
    net.inputWeights{2,1}.initFcn = 'rands';
    net.biases{2}.initFcn = 'rands';

    net = configure(net, p, t);
end