#!/bin/bash

##############
## Devices  ##
##############

for DEVICE in sepolicy common loire blanc kugo suzu tone dora kagura keyaki yoshino lilac maple poplar nile pioneer discovery tama akari apollo
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/device_sony_$DEVICE && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg device_sony_$DEVICE/.git/hooks/
done

############################
### A D D  R E M O T E S ###
############################

for DEVICE in sepolicy common loire blanc kugo suzu tone dora kagura keyaki yoshino lilac maple poplar nile pioneer discovery tama akari apollo
do
cd device_sony_$DEVICE
git remote add sony https://github.com/sonyxperiadev/device-sony-$DEVICE.git
git fetch sony
cd ../
done

###################
## G E N E R I C ##
###################

for REPO in kernel platform_hardware_qcom_camera platform_hardware_qcom_location platform_hardware_sony_fingerprint platform_hardware_sony_dataservices platform_hardware_sony_macaddrsetup platform_hardware_sony_thermanager platform_hardware_sony_timekeep platform_packages_apps_ExtendedSettings
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/$REPO && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg $REPO/.git/hooks/
done

############################
### A D D  R E M O T E S ###
############################

cd kernel
git remote add sony https://github.com/sonyxperiadev/kernel.git
git fetch sony
cd ../

cd platform_hardware_qcom_camera
git remote add sony https://github.com/sonyxperiadev/camera.git
git fetch sony
cd ../

cd platform_hardware_qcom_location
git remote add sony https://github.com/sonyxperiadev/vendor-qcom-opensource-location.git
git fetch sony
cd ../

cd platform_hardware_sony_dataservices
git remote add sony https://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices.git
git fetch sony
cd ../

cd platform_hardware_sony_fingerprint
git remote add sony https://github.com/sonyxperiadev/vendor-sony-oss-fingerprint.git
git fetch sony
cd ../

cd platform_hardware_sony_macaddrsetup
git remote add sony https://github.com/sonyxperiadev/macaddrsetup.git
git fetch sony
cd ../

cd platform_hardware_sony_thermanager
git remote add sony https://github.com/sonyxperiadev/thermanager.git
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
