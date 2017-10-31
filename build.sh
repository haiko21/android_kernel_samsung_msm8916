#!/bin/bash
export USE_CCACHE=1
rm -rf output

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/arm-eabi-4.9/bin/arm-eabi-
mkdir output


#make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8916_defconfig lineage_a5ultexx_essentials_defconfig lineageos_a5ultexx_defconfig
make -C $(pwd) O=output lineageos_a5ultexx_defconfig
make -j5 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
./mkboot.sh
