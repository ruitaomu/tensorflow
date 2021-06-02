[Build TFLite]<br>
cd ~<br>
mkdir tflite_build<br>
cd tflite_build<br>
{your_tensorflow_e3500_src_dir}/e3500/build_tflite.sh<br>
parch -p1 < {your_tensorflow_e3500_dir}/e3500/tflite_build.patch<br>
cmake --build .<br>
<br>
If your ARM toolchain installed other than /opt/arm_linux_toolchain/, remember to change it in build_tflite.sh<br>
<br>
[Build Lable Image demo]<br>
To make label_image, after building TFLite:<br>
cd ~/tflite_build<br>
make label_image<br>
<br>
You may need to manually modify link.txt in examples/label_image/CMakeFiles/label_image.dir/link.txt to remove "libm.so" and add "-lm"<br>
<br>
To run label_image demo, see:<br>
https://github.com/ruitaomu/tensorflow/tree/master/tensorflow/lite/examples/label_image
