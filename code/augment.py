import os
from PIL import Image, ImageFilter

OLD_DIR = 'path to directory of images to augment'
AUG_DIR = 'path to save the augmented images'

for filename in os.listdir(OLD_DIR):
    if 'png' not in filename:
        continue
    path = os.path.join(OLD_DIR, filename)

    im = Image.open(path)
    im = im.convert('L')

    im_blur_1 = im.filter(ImageFilter.GaussianBlur(2))
    im_blur_2 = im.filter(ImageFilter.GaussianBlur(3))
    im_blur_3 = im.filter(ImageFilter.GaussianBlur(4))

    im_edge_1 = im.filter(ImageFilter.EDGE_ENHANCE)
    im_edge_2 = im.filter(ImageFilter.EDGE_ENHANCE_MORE)

    basename = os.path.splitext(filename)[0]

    im.save(os.path.join(AUG_DIR, basename + '_original.png'))
    im_blur_1.save(os.path.join(AUG_DIR, basename + '_blur_1.png'))
    im_blur_2.save(os.path.join(AUG_DIR, basename + '_blur_2.png'))
    im_blur_3.save(os.path.join(AUG_DIR, basename + '_blur_3.png'))
    im_edge_1.save(os.path.join(AUG_DIR, basename + '_edge_1.png'))
    im_edge_2.save(os.path.join(AUG_DIR, basename + '_edge_2.png'))
