[Build TFLite]
cd ~
mkdir tflite_build
cd tflite_build
{your_tensorflow_e3500_src_dir}/e3500/build_tflite.sh
parch -p1 < {your_tensorflow_e3500_dir}/e3500/tflite_build.patch
cmake --build .

If your ARM toolchain installed other than /opt/arm_linux_toolchain/, remember to change it in build_tflite.sh

[Build Lable Image demo]
To make label_image, after building TFLite:
cd ~/tflite_build
make label_image

You may need to manually modify link.txt in examples/label_image/CMakeFiles/label_image.dir/link.txt to remove "libm.so" and add "-lm"

To run label_image demo, see:
https://github.com/ruitaomu/tensorflow/tree/master/tensorflow/lite/examples/label_image
