#!/bin/bash

cd 3.10

for DEVICE in sepolicy common rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire kugo suzu
do
echo 'Checking for changes in '$DEVICE
echo '\n\n'
cd device_sony_$DEVICE
git reset --hard
git fetch sony
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
cd ../
done

echo 'Checking for changes in platform_hardware_sony_init\n\n'
cd platform_hardware_sony_init
git reset --hard
git fetch sony
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
cd ../

cd ../
