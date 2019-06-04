GPU=$1

python ~/iris_segmentation/dilation/test.py frontend \
--work_dir PATH_TO_WORK_DIR \
--image_list PATH_TO_IMAGE_LIST \
--weights PATH_TO_CAFFE_MODEL \
--classes 2 \
--gpu $GPU \
--bin
