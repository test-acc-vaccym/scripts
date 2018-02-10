#!/bin/bash

cd 3.10

for DEVICE in sepolicy common rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran
do
echo 'Checking for changes in '$DEVICE
echo '\n\n'
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
  git branch -D android-7.1-3.10
  git checkout -b android-7.1-3.10
  git push -f origin android-7.1-3.10
else
  echo 'no updates my friends!'
fi
cd ../
done

for DEVICE_LEGACY in loire kugo suzu
do
echo 'Checking for changes in '$DEVICE_LEGACY
echo '\n\n'
cd device_sony_$DEVICE_LEGACY
git reset --hard
git fetch sony
if git checkout n-mr1-legacy &&
    git fetch sony n-mr1-legacy &&
    [ `git rev-list HEAD...sony/n-mr1-legacy --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/n-mr1-legacy
  git branch -D n-mr1-legacy
  git checkout -b n-mr1-legacy
  git branch -D android-7.1-3.10
  git checkout -b android-7.1-3.10
  git push -f origin android-7.1-3.10
else
  echo 'no updates my friends!'
fi
cd ../
done

echo 'Checking for changes in platform_hardware_sony_init\n\n'
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
  git branch -D android-7.1-3.10
  git checkout -b android-7.1-3.10
  git push -f origin android-7.1-3.10
else
  echo 'no updates my friends!'
fi
cd ../

cd ../
