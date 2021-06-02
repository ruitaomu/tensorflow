ARMCC_FLAGS="-march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=softfp -funsafe-math-optimizations --sysroot=/opt/arm-linux-toolchain/mdm9607"
ARMCC_PREFIX=/opt/arm-linux-toolchain/x86_64-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi- 
cmake -DCMAKE_C_COMPILER=${ARMCC_PREFIX}gcc -DCMAKE_CXX_COMPILER=${ARMCC_PREFIX}g++   -DCMAKE_C_FLAGS="${ARMCC_FLAGS}"   -DCMAKE_CXX_FLAGS="${ARMCC_FLAGS}" -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON   -DCMAKE_SYSTEM_NAME=Linux   -DCMAKE_SYSTEM_PROCESSOR=armv7 ../tensorflow_src/tensorflow/lite
