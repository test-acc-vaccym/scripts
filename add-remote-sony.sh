#!/bin/bash

for DEVICE in common yukon eagle flamingo seagull tianchi rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire suzu
do
cd device_sony_$DEVICE
git remote add sony https://github.com/sonyxperiadev/device-sony-$DEVICE.git
git fetch sony
cd ../
done

cd device_sony_sepolicy
git remote add sony https://github.com/sonyxperiadev/device-sony-sepolicy.git
git fetch sony
cd ../

cd device_qcom_sepolicy
git remote add sony https://github.com/sonyxperiadev/device-qcom-sepolicy.git
git fetch sony
cd ../

cd platform_hardware_qcom_camera
git remote add sony https://github.com/sonyxperiadev/camera.git
git fetch sony
cd ../

cd vendor_qcom_opensource_dataservices
git remote add sony https://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices.git
git fetch sony
cd ../

cd platform_hardware_sony_thermanager
git remote add sony https://github.com/sonyxperiadev/thermanager.git
git fetch sony
cd ../

cd platform_hardware_sony_macaddrsetup
git remote add sony https://github.com/sonyxperiadev/macaddrsetup.git
git fetch sony
cd ../

cd platform_hardware_sony_mkqcdtbootimg
git remote add sony https://github.com/sonyxperiadev/mkqcdtbootimg.git
git fetch sony
cd ../

cd platform_hardware_sony_timekeep
git remote add sony https://github.com/sonyxperiadev/timekeep.git
git fetch sony
cd ../

cd kernel
git remote add sony https://github.com/sonyxperiadev/kernel.git
git fetch sony
cd ../
