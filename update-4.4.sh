#!/bin/bash

cd 4.4
for DEVICE in sepolicy common kanuti tulip loire kugo suzu dora kagura keyaki maple
do
cd device_sony_$DEVICE
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
  git branch -D android-7.1-4.4
  git checkout -b android-7.1-4.4
  git push -f origin android-7.1-4.4
else
  echo 'no updates my friends!'
fi
cd ../
done

cd device_sony_tone
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
  git branch -D android-7.1-4.4
  git checkout -b android-7.1-4.4
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_tone refs/changes/34/34/1 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-4.4
else
  echo 'no updates my friends!'
fi
cd ../

cd device_sony_yoshino
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
  git branch -D android-7.1-4.4
  git checkout -b android-7.1-4.4
  git fetch https://review.sonyaosp.org/SonyAosp/device_sony_yoshino refs/changes/35/35/1 && git cherry-pick FETCH_HEAD
  git push -f origin android-7.1-4.4
else
  echo 'no updates my friends!'
fi
cd ../

cd kernel
git reset --hard
git fetch sony
if git checkout aosp/LA.UM.5.7.r1 &&
    git fetch sony aosp/LA.UM.5.7.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.5.7.r1 --count` != 0 ]
then
  echo 'kernel update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.5.7.r1
  git branch -D aosp/LA.UM.5.7.r1
  git checkout -b aosp/LA.UM.5.7.r1
  git push -f origin aosp/LA.UM.5.7.r1
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_qcom_camera
git reset --hard
git fetch sony
if git checkout aosp/LA.UM.5.7.r1 &&
    git fetch sony aosp/LA.UM.5.7.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.5.7.r1 --count` != 0 ]
then
  echo 'camera update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.5.7.r1
  git branch -D aosp/LA.UM.5.7.r1
  git checkout -b aosp/LA.UM.5.7.r1
  git push -f origin aosp/LA.UM.5.7.r1
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
  echo 'recovery update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D android-7.1-4.4
  git checkout -b android-7.1-4.4
  git push -f origin android-7.1-4.4
else
  echo 'no updates my friends!'
fi
cd ../

cd ../
