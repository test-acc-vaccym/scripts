#!/bin/bash

for DEVICE in sepolicy common rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire kugo suzu
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
if git checkout n-mr1 &&
    git fetch sony n-mr1 &&
    [ `git rev-list HEAD...sony/n-mr1 --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/n-mr1
  git branch -D n-mr1
  git checkout -b n-mr1
  git branch -D android-7.1-3.10
  git checkout -b android-7.1-3.10
  git push -f origin android-7.1-3.10
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
  git branch -D android-7.1-3.10
  git checkout -b android-6.0
  git checkout -b android-7.0
  git checkout -b android-7.1-3.10
  git push -f origin android-6.0
  git push -f origin android-7.0
  git push -f origin android-7.1-3.10
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
  git branch -D android-7.1-3.10
  git checkout -b android-6.0
  git checkout -b android-7.0
  git checkout -b android-7.1-3.10
  git push -f origin android-6.0
  git push -f origin android-7.0
  git push -f origin android-7.1-3.10
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
if git checkout n-mr0 &&
    git fetch sony n-mr0 &&
    [ `git rev-list HEAD...sony/n-mr0 --count` != 0 ]
then
  echo 'recovery update(s) detected! Lets pull changes!'
  git checkout sony/n-mr0
  git branch -D n-mr0
  git checkout -b n-mr0
  git branch -D android-7.0
  git checkout -b android-7.0
  git push -f origin android-7.0
else
  echo 'no updates my friends!'
fi
if git checkout n-mr1 &&
    git fetch sony n-mr1 &&
    [ `git rev-list HEAD...sony/n-mr1 --count` != 0 ]
then
  echo 'recovery update(s) detected! Lets pull changes!'
  git checkout sony/n-mr1
  git branch -D n-mr1
  git checkout -b n-mr1
  git branch -D android-7.1-3.10
  git checkout -b android-7.1-3.10
  git push -f origin android-7.1-3.10
else
  echo 'no updates my friends!'
fi
cd ../
