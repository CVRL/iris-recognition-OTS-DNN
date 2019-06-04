GPU=$1

python ~/iris_segmentation/dilation/train.py context \
--train_image PATH_TO_TRAINING_IMAGES_FEATURES_FILE \
--train_label PATH_TO_LIST_OF_TRAINING_LABELS \
--test_image PATH_TO_VALIDATION_IMAGES_FEATURES_FILE \
--test_label PATH_TO_LIST_OF_VALIDATION_LABELS \
--train_batch 1 \
--test_batch 1 \
--caffe PATH_TO_CAFFE \
--classes 2 \
--layers 8 \
--label_shape 66 132 \
--lr 0.001 \
--momentum 0.9 \
--gpu $GPU
