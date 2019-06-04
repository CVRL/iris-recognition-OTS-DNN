GPU=$1

python ~/iris_segmentation/dilation/test.py context \
--work_dir WORK_DIR \
--image_list PATH_TO_LIST_OF_IMAGES \
--bin_list PATH_TO_LIST_OF_FEATURES \
--weights PATH_TO_CAFFE_MODEL \
--input_size 132 198 \
--classes 2 \
--gpu $GPU \
--bin
