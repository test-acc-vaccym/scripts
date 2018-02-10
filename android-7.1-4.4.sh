#!/bin/bash

cd 4.4

for DEVICE in sepolicy common kanuti tulip loire kugo suzu tone dora kagura keyaki yoshino lilac maple poplar
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
  git branch -D android-7.1-4.4
  git checkout -b android-7.1-4.4
  git push -f origin android-7.1-4.4
else
  echo 'no updates my friends!'
fi
cd ../
done

cd ../
