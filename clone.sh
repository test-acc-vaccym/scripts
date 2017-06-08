#!/bin/bash

##############
## 7.1-3.10 ##
##############

mkdir 3.10
cd 3.10
for DEVICE in sepolicy common rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire kugo suzu
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/device_sony_$DEVICE && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg device_sony_$DEVICE/.git/hooks/
done

for REPO in kernel platform_hardware_qcom_camera platform_hardware_sony_init
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/$REPO && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg $REPO/.git/hooks/
done

############################
### A D D  R E M O T E S ###
############################

for DEVICE in sepolicy common rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire kugo suzu
do
cd device_sony_$DEVICE
git remote add sony https://github.com/sonyxperiadev/device-sony-$DEVICE.git
git fetch sony
cd ../
done

cd kernel
git remote add sony https://github.com/sonyxperiadev/kernel.git
git fetch sony
cd ../

cd platform_hardware_qcom_camera
git remote add sony https://github.com/sonyxperiadev/camera.git
git fetch sony
cd ../

cd platform_hardware_sony_init
git remote add sony https://github.com/sonyxperiadev/device-sony-common-init.git
git fetch sony
cd ../

cd ../

##############
## 7.1-3.18 ##
##############

mkdir 3.18

cd 3.18

for DEVICE in sepolicy common tone dora kagura keyaki
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/device_sony_$DEVICE && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg device_sony_$DEVICE/.git/hooks/
done

for REPO in kernel platform_hardware_qcom_camera platform_hardware_sony_init
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/$REPO && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg $REPO/.git/hooks/
done

############################
### A D D  R E M O T E S ###
############################

for DEVICE in sepolicy common tone dora kagura keyaki
do
cd device_sony_$DEVICE
git remote add sony https://github.com/sonyxperiadev/device-sony-$DEVICE.git
git fetch sony
cd ../
done

cd kernel
git remote add sony https://github.com/sonyxperiadev/kernel.git
git fetch sony
cd ../

cd platform_hardware_qcom_camera
git remote add sony https://github.com/sonyxperiadev/camera.git
git fetch sony
cd ../

cd platform_hardware_sony_init
git remote add sony https://github.com/sonyxperiadev/device-sony-common-init.git
git fetch sony
cd ../

cd ../

##############
## 7.1-4.4 ##
##############

mkdir 4.4

cd 4.4

for DEVICE in sepolicy common loire kugo suzu tone dora kagura keyaki
do

  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/device_sony_$DEVICE && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg device_sony_$DEVICE/.git/hooks/
done

for REPO in kernel platform_hardware_qcom_camera platform_hardware_sony_init
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/$REPO && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg $REPO/.git/hooks/
done

############################
### A D D  R E M O T E S ###
############################

for DEVICE in sepolicy common loire kugo suzu tone dora kagura keyaki
do
cd device_sony_$DEVICE
git remote add sony https://github.com/sonyxperiadev/device-sony-$DEVICE.git
git fetch sony
cd ../
done

cd kernel
git remote add sony https://github.com/sonyxperiadev/kernel.git
git fetch sony
cd ../

cd platform_hardware_qcom_camera
git remote add sony https://github.com/sonyxperiadev/camera.git
git fetch sony
cd ../

cd platform_hardware_sony_init
git remote add sony https://github.com/sonyxperiadev/device-sony-common-init.git
git fetch sony
cd ../

cd ../

###################
## G E N E R I C ##
###################

for REPO in platform_hardware_qcom_fm platform_hardware_qcom_location platform_hardware_sony_dataservices platform_hardware_sony_macaddrsetup platform_hardware_sony_thermanager platform_hardware_sony_timekeep platform_packages_apps_ExtendedSettings platform_packages_apps_FMRadio
do
  git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/$REPO && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg $REPO/.git/hooks/
done

############################
### A D D  R E M O T E S ###
############################

cd platform_hardware_qcom_fm
git remote add sony https://github.com/sonyxperiadev/vendor-qcom-opensource-fm.git
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

cd platform_packages_apps_FMRadio
git remote add sony https://github.com/sonyxperiadev/packages-apps-FMRadio.git
git fetch sony
cd ../

