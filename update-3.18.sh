#!/bin/bash

cd 3.18

for DEVICE in sepolicy common tone dora kagura keyaki
do
cd device_sony_$DEVICE
git reset --hard
git fetch sony
if git checkout n-mr1 &&
    git fetch sony n-mr1 &&
    [ `git rev-list HEAD...sony/n-mr1 --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/n-mr1
  git branch -D n-mr1
  git checkout -b n-mr1
  git branch -D android-7.1-3.18
  git checkout -b android-7.1-3.18
  git push -f origin android-7.1-3.18
else
  echo 'no updates my friends!'
fi
cd ../
done

cd kernel
git reset --hard
git fetch sony
if git checkout aosp/LA.UM.5.5.r1 &&
    git fetch sony aosp/LA.UM.5.5.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.5.5.r1 --count` != 0 ]
then
  echo 'kernel update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.5.5.r1
  git branch -D aosp/LA.UM.5.5.r1
  git checkout -b aosp/LA.UM.5.5.r1
  git branch -D android-7.1-3.18
  git checkout -b android-7.1-3.18
  git push -f origin android-7.1-3.18
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_qcom_camera
git reset --hard
git fetch sony
if git checkout aosp/LA.UM.5.5.r1 &&
    git fetch sony aosp/LA.UM.5.5.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.5.5.r1 --count` != 0 ]
then
  echo 'camera update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.5.5.r1
  git branch -D aosp/LA.UM.5.5.r1
  git checkout -b aosp/LA.UM.5.5.r1
  git branch -D android-7.1-3.18
  git checkout -b android-7.1-3.18
  git push -f origin android-7.1-3.18
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_init
git reset --hard
git fetch sony
if git checkout n-mr1 &&
    git fetch sony n-mr1 &&
    [ `git rev-list HEAD...sony/n-mr1 --count` != 0 ]
then
  echo 'recovery update(s) detected! Lets pull changes!'
  git checkout sony/n-mr1
  git branch -D n-mr1
  git checkout -b n-mr1
  git branch -D android-7.1-3.18
  git checkout -b android-7.1-3.18
  git push -f origin android-7.1-3.18
else
  echo 'no updates my friends!'
fi
cd ../

cd ../
