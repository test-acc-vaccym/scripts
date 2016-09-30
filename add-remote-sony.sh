#!/bin/bash

for DEVICE in sepolicy common rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire kugo suzu tone dora
do
cd device_sony_$DEVICE
git remote add sony https://github.com/sonyxperiadev/device-sony-$DEVICE.git
git fetch sony
cd ../
done

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

cd platform_hardware_sony_init
git remote add sony https://github.com/sonyxperiadev/device-sony-common-init.git
git fetch sony
cd ../

cd platform_hardware_sony_macaddrsetup
git remote add sony https://github.com/sonyxperiadev/macaddrsetup.git
git fetch sony
cd ../

cd platform_hardware_sony_timekeep
git remote add sony https://github.com/sonyxperiadev/timekeep.git
git fetch sony
cd ../

cd platform_packages_apps_ExtendedSettings
git remote add sony https://github.com/sonyxperiadev/packages_apps_ExtendedSettings.git
git fetch sony
cd ../

cd platform_packages_apps_FMRadio
git remote add sony https://github.com/sonyxperiadev/packages-apps-FMRadio.git
git fetch sony
cd ../

cd platform_hardware_qcom_fm
git remote add sony https://github.com/sonyxperiadev/vendor-qcom-opensource-fm.git
git fetch sony
cd ../

cd kernel
git remote add sony https://github.com/sonyxperiadev/kernel.git
git fetch sony
cd ../
