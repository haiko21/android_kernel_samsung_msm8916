cp ./output/arch/arm/boot/zImage tools_muh/
cd tools_muh
cp zImage boot.img-zImage
./mkbootimg/mkbootimg --kernel boot.img-zImage --ramdisk boot.img-ramdisk.gz  --cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=enforcing androidboot.verifiedbootstate=green buildvariant=userdebug" --base 80000000 --pagesize 2048 --dt boot.img-dtb --hash sha1 -o boot.img

