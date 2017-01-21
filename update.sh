#!/bin/bash

for DEVICE in common sepolicy rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire kugo suzu tone dora kagura
do
cd device_sony_$DEVICE
git reset --hard
git fetch sony
if git checkout m-mr1 &&
    git fetch sony m-mr1 &&
    [ `git rev-list HEAD...sony/m-mr1 --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/m-mr1
  git branch -D m-mr1
  git checkout -b m-mr1
  git branch -D android-6.0
  git checkout -b android-6.0
  git push -f origin android-6.0
else
  echo 'no updates my friends!'
fi
if git checkout n-mr0 &&
    git fetch sony n-mr0 &&
    [ `git rev-list HEAD...sony/n-mr0 --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/n-mr0
  git branch -D n-mr0
  git checkout -b n-mr0
  git branch -D android-7.0
  git checkout -b android-7.0
  git push -f origin android-7.0
else
  echo 'no updates my friends!'
fi
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1
  git checkout -b android-7.1
  git push -f origin android-7.1
else
  echo 'no updates my friends!'
fi
cd ../
done

for COMMON in common
do
cd device_sony_$COMMON
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1-legacy
  git checkout -b android-7.1-legacy
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_common refs/changes/92/492/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_common refs/changes/99/499/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_common refs/changes/02/502/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_common refs/changes/03/503/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_common refs/changes/14/514/1 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-legacy
else
  echo 'no updates my friends!'
fi
cd ../
done

for KANUTI in kanuti
do
cd device_sony_$KANUTI
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1-legacy
  git checkout -b android-7.1-legacy
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_kanuti refs/changes/94/494/1 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-legacy
else
  echo 'no updates my friends!'
fi
cd ../
done

for KITAKAMI in kitakami
do
cd device_sony_$KITAKAMI
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1-legacy
  git checkout -b android-7.1-legacy
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_kitakami refs/changes/95/495/1 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-legacy
else
  echo 'no updates my friends!'
fi
cd ../
done

for LOIRE in loire
do
cd device_sony_$LOIRE
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1-legacy
  git checkout -b android-7.1-legacy
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_loire refs/changes/96/496/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_loire refs/changes/97/497/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_loire refs/changes/98/498/1 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-legacy
else
  echo 'no updates my friends!'
fi
cd ../
done

for RHINE in rhine
do
cd device_sony_$RHINE
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1-legacy
  git checkout -b android-7.1-legacy
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_rhine refs/changes/37/437/2 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-legacy
else
  echo 'no updates my friends!'
fi
cd ../
done

for SHINANO in shinano
do
cd device_sony_$SHINANO
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1-legacy
  git checkout -b android-7.1-legacy
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_shinano refs/changes/36/436/2 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-legacy
else
  echo 'no updates my friends!'
fi
cd ../
done

cd kernel
git reset --hard
git fetch sony
if git checkout aosp/LA.BR.1.3.3_rb2.14 &&
    git fetch sony aosp/LA.BR.1.3.3_rb2.14 &&
    [ `git rev-list HEAD...sony/aosp/LA.BR.1.3.3_rb2.14 --count` != 0 ]
then
  echo 'kernel update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.BR.1.3.3_rb2.14
  git branch -D aosp/LA.BR.1.3.3_rb2.14
  git checkout -b aosp/LA.BR.1.3.3_rb2.14
  git branch -D android-6.0
  git branch -D android-7.0
  git checkout -b android-6.0
  git checkout -b android-7.0
  git push -f origin android-6.0
  git push -f origin android-7.0
else
  echo 'no updates my friends!'
fi
if git checkout aosp/LA.UM.5.5.r1 &&
    git fetch sony aosp/LA.UM.5.5.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.5.5.r1 --count` != 0 ]
then
  echo 'kernel update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.5.5.r1
  git branch -D aosp/LA.UM.5.5.r1
  git checkout -b aosp/LA.UM.5.5.r1
  git branch -D android-7.1
  git checkout -b android-7.1
  git push -f origin android-7.1
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_qcom_camera
git reset --hard
git fetch sony
if git checkout aosp/LA.BR.1.3.3_rb2.14 &&
    git fetch sony aosp/LA.BR.1.3.3_rb2.14 &&
    [ `git rev-list HEAD...sony/aosp/LA.BR.1.3.3_rb2.14 --count` != 0 ]
then
  echo 'camera update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.BR.1.3.3_rb2.14
  git branch -D aosp/LA.BR.1.3.3_rb2.14
  git checkout -b aosp/LA.BR.1.3.3_rb2.14
  git branch -D android-6.0
  git branch -D android-7.0
  git checkout -b android-6.0
  git checkout -b android-7.0
  git push -f origin android-6.0
  git push -f origin android-7.0
else
  echo 'no updates my friends!'
fi
if git checkout aosp/LA.UM.5.5.r1 &&
    git fetch sony aosp/LA.UM.5.5.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.5.5.r1 --count` != 0 ]
then
  echo 'camera update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.5.5.r1
  git branch -D aosp/LA.UM.5.5.r1
  git checkout -b aosp/LA.UM.5.5.r1
  git branch -D android-7.1
  git checkout -b android-7.1
  git push -f origin android-7.1
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_qcom_fm
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'qcom fm driver update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_qcom_location
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'qcom location driver update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_dataservices
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'data services update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_init
git reset --hard
git fetch sony
if git checkout m-mr1 &&
    git fetch sony m-mr1 &&
    [ `git rev-list HEAD...sony/m-mr1 --count` != 0 ]
then
  echo 'recovery update(s) detected! Lets pull changes!'
  git checkout sony/m-mr1
  git branch -D m-mr1
  git checkout -b m-mr1
  git branch -D android-6.0
  git checkout -b android-6.0
  git push -f origin android-6.0
else
  echo 'no updates my friends!'
fi
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'recovery update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.0
  git branch -D android-7.1
  git checkout -b android-7.0
  git checkout -b android-7.1
  git push -f origin android-7.0
  git push -f origin android-7.1
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_macaddrsetup
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'mac control update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_thermanager
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'thermal control update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_timekeep
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'time services update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_packages_apps_ExtendedSettings
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'extended settings update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_packages_apps_FMRadio
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'fm radio app update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../
