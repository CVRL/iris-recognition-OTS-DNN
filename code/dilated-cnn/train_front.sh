GPU=$1

python ~/iris_segmentation/dilation/train.py frontend \
--work_dir PATH_TO_WORK_DIR \
--train_image PATH_TO_LIST_OF_TRAINING_IMAGES \
--train_label PATH_TO_LIST_OF_TRAINING_LABELS \
--test_image PATH_TO_LIST_OF_VALIDATION_IMAGES \
--test_label PATH_TO_LIST_OF_VALIDATION_LABELS \
--train_batch 1 \
--test_batch 1 \
--caffe PATH_TO_CAFFE \
--weights PATH_TO_dilation/pretrained/vgg_conv.caffemodel \
--crop_size 644 \
--classes 2 \
--lr 0.0001 \
--momentum 0.9 \
--mean 178 178 178 \
--gpu $GPU 
