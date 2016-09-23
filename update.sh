#!/bin/bash

git config --global user.name "Erik Castricum"
git config --global user.email "erikcas1972@gmail.com"

for DEVICE in common sepolicy rhine amami honami togari castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire suzu
do
cd device_sony_$DEVICE
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'Sony N device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D n
  git checkout -b n
  git push -f origin n
else
  echo 'no updates my friends!'
fi
if git checkout m-mr1 &&
    git fetch sony m-mr1 &&
    [ `git rev-list HEAD...sony/m-mr1 --count` != 0 ]
then
  echo 'Sony M device update(s) detected! Lets pull changes!'
  git checkout sony/m-mr1
  git branch -D m-mr1
  git checkout -b m-mr1
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git push -f origin mm-6.0
else
  echo 'no updates my friends!'
fi
cd ../
done

cd device_sony_shinano
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'Sony N device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D n
  git checkout -b n
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_shinano refs/changes/90/190/1 && git cherry-pick FETCH_HEAD
  git push -f origin n
else
  echo 'no updates my friends!'
fi
if git checkout m-mr1 &&
    git fetch sony m-mr1 &&
    [ `git rev-list HEAD...sony/m-mr1 --count` != 0 ]
then
  echo 'Sony M device update(s) detected! Lets pull changes!'
  git checkout sony/m-mr1
  git branch -D m-mr1
  git checkout -b m-mr1
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_shinano refs/changes/89/189/1 && git cherry-pick FETCH_HEAD
  git push -f origin mm-6.0
else
  echo 'no updates my friends!'
fi
cd ../

cd vendor_qcom_opensource_dataservices
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'Sony Master device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D n
  git branch -D mm-6.0
  git checkout -b n
  git fetch https://review.sonyaosp.org/SonyAosp/vendor_qcom_opensource_dataservices refs/changes/92/192/1 && git cherry-pick FETCH_HEAD
  git checkout -b mm-6.0
  git fetch https://review.sonyaosp.org/SonyAosp/vendor_qcom_opensource_dataservices refs/changes/92/192/1 && git cherry-pick FETCH_HEAD
  git push -f origin n
  git push -f origin mm-6.0
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
  echo 'Sony M and N device update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.BR.1.3.3_rb2.14
  git branch -D aosp/LA.BR.1.3.3_rb2.14
  git checkout -b aosp/LA.BR.1.3.3_rb2.14
  git branch -D mm-6.0
  git branch -D n
  git checkout -b mm-6.0
  git fetch https://review.sonyaosp.org/SonyAosp/platform_hardware_qcom_camera refs/changes/95/195/1 && git cherry-pick FETCH_HEAD
  git checkout -b n
  git fetch https://review.sonyaosp.org/SonyAosp/platform_hardware_qcom_camera refs/changes/95/195/1 && git cherry-pick FETCH_HEAD
  git push -f origin mm-6.0
  git push -f origin n
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_init
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'Sony N device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D n
  git checkout -b n
  git push -f origin n
else
  echo 'no updates my friends!'
fi
if git checkout m-mr1 &&
    git fetch sony m-mr1 &&
    [ `git rev-list HEAD...sony/m-mr1 --count` != 0 ]
then
  echo 'Sony M device update(s) detected! Lets pull changes!'
  git checkout sony/m-mr1
  git branch -D m-mr1
  git checkout -b m-mr1
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git push -f origin mm-6.0
else
  echo 'no updates my friends!'
fi
cd ../

cd kernel
git reset --hard
git fetch sony
if git checkout aosp/LA.BR.1.3.3_rb2.14 &&
    git fetch sony aosp/LA.BR.1.3.3_rb2.14 &&
    [ `git rev-list HEAD...sony/aosp/LA.BR.1.3.3_rb2.14 --count` != 0 ]
then
  echo 'Sony M and N kernel updated! Lets pull changes!'
  git checkout sony/aosp/LA.BR.1.3.3_rb2.14
  git branch -D aosp/LA.BR.1.3.3_rb2.14
  git checkout -b aosp/LA.BR.1.3.3_rb2.14
  git branch -D mm-6.0
  git branch -D n
  git checkout -b mm-6.0
  git fetch https://review.sonyaosp.org/SonyAosp/kernel refs/changes/07/207/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/kernel refs/changes/08/208/1 && git cherry-pick FETCH_HEAD
  git checkout -b n
  git fetch https://review.sonyaosp.org/SonyAosp/kernel refs/changes/07/207/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/SonyAosp/kernel refs/changes/08/208/1 && git cherry-pick FETCH_HEAD
  git push -f origin mm-6.0
  git push -f origin n
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
  echo 'Sony Master device update(s) detected! Lets pull changes!'
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
  echo 'Sony Master device update(s) detected! Lets pull changes!'
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
  echo 'Sony Master device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
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
  echo 'Sony Master device update(s) detected! Lets pull changes!'
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
  echo 'Sony Master device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
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
  echo 'Sony Master device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../
