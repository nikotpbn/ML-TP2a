function [net] = perceptron_filter

    net = network;

    net.name = 'Single Layer OCR Classifier';
    net.performFcn = 'sse';
    net.initFcn = 'initlay';
    net.adaptFcn = 'adaptwb';
    net.plotFcns = { 'plotconfusion',...
        'plotperform',...
        'plottrainstate',...
        'plotregression',...
        'plotroc'};

    net.divideFcn = 'divideblock';
    net.divideParam.trainRatio = 0.8;
    net.divideParam.valRatio = 0.2;
    net.divideParam.testRatio = 0;

    net.numInputs = 1;
    net.numLayers = 1;
    net.biasConnect(1) = 1;
    net.inputConnect(1,1) = 1;
    net.outputConnect(1) = 1;
    net.trainFcn = 'trainc';

    net.layers{1}.size = 256;
    net.layers{1}.transferFcn = 'hardlim';
    net.layers{1}.initFcn = 'initnw';
    net.inputWeights{1,1}.learnFcn = 'learnp';
    net.biases{1}.learnFcn = 'learnp';
end