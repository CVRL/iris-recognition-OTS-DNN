train_images_f = fopen('path to training images');
train_labels_f = fopen('path to training labels');

train_images_d = textscan(train_images_f, '%s');
train_labels_d = textscan(train_labels_f, '%s');

imds = imageDatastore(train_images_d{1});

classes = [ "Iris" "Other"];

labelIDs = [ 1 0 ];

pxds = pixelLabelDatastore(train_labels_d{1}, classes, labelIDs);

numTrainingImages = numel(imds.Files);

imageSize = [240 320 3];
numClasses = numel(classes);

lgraph = segnetLayers(imageSize,numClasses,'vgg16');

tbl = countEachLabel(pxds);
pxLayer = pixelClassificationLayer('Name','labels','ClassNames',tbl.Name);

%% 
% Update the SegNet network with the new |pixelClassificationLayer| by
% removing the current |pixelClassificationLayer| and adding the new layer.
% The current |pixelClassificationLayer| is named 'pixelLabels'. Remove it 
% using |removeLayers|, add the new one using|addLayers|, and connect the 
% new layer to the rest of the network using |connectLayers|.

lgraph = removeLayers(lgraph, 'pixelLabels');
lgraph = addLayers(lgraph, pxLayer);
lgraph = connectLayers(lgraph, 'softmax' ,'labels');

%% Start Training
datasource = pixelLabelImageSource(imds,pxds);

%% Select Training Options

options = trainingOptions('sgdm', ...
    'Momentum', 0.9, ...
    'InitialLearnRate', 0.001, ...
    'L2Regularization', 0.0005, ...
    'MaxEpochs', 20, ...
    'MiniBatchSize', 4, ...
    'Shuffle', 'every-epoch', ...
    'CheckpointPath', 'path to save checkpoints', ...
    'ExecutionEnvironment', 'gpu', ...
    'VerboseFrequency', 1000);

%% Start training using |trainNetwork|.
[net, info] = trainNetwork(datasource,lgraph,options);
save net
save info
