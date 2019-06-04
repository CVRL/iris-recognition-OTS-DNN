maxNumCompThreads(6);

test_images_f = fopen('path to test images');
test_images_d = textscan(test_images_f, '%s');

load('path to net.mat');
load('path to info.mat');

imds = imageDatastore(test_images_d{1});

pxds = semanticseg(imds, net, 'WriteLocation', 'path to write results to', 'Verbose', false);
