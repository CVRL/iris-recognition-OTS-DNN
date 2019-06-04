# iris-recognition-OTS-DNN
Code and models for the ICB 2019 paper: Iris Recognition with Image Segmentation Employing Retrained Off-the-Shelf Deep Neural Networks. Pre-print available at: https://arxiv.org/abs/1901.01028

## Contents

### code
You will need to edit the scripts and programs below to point to the correct paths for your data. See the linked pages for more details, such as how to prepare the data.

- dilated-cnn: scripts used to train and test the frontend and context modules, proposed by Yu and Koltun. See their [training page](https://github.com/fyu/dilation/blob/master/docs/training.md) for more info.
- DRN: script used to train the dilated residual network, proposed by Yu, Koltun, and Funkhouser. See their [README](https://github.com/fyu/drn) for more info.
- SegNet: MATLAB programs used to train and test SegNet. See MATLAB's old guide on [Semantic Segmentation Using Deep Learning](https://web.archive.org/web/20180527004009/https://www.mathworks.com/help/vision/examples/semantic-segmentation-using-deep-learning.html), which the training program was based on.
- augment.py: script used to augment the training data

### models
The file models.tgz can be downloaded from [this release](https://github.com/CVRL/iris-recognition-OTS-DNN/releases).

- dilated-cnn: trained frontend and context modules
- DRN: trained dilated residual network
- SegNet: trained SegNet
