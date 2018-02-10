#!/bin/bash

cd 4.4

for DEVICE in sepolicy common kanuti tulip loire kugo suzu tone dora kagura keyaki yoshino lilac maple poplar
do
echo 'Checking for changes in '$DEVICE
echo '\n\n'
cd device_sony_$DEVICE
git reset --hard
git fetch sony
if git checkout o-mr0 &&
    git fetch sony o-mr0 &&
    [ `git rev-list HEAD...sony/o-mr0 --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/o-mr0
  git branch -D o-mr0
  git checkout -b o-mr0
  git branch -D android-8.0
  git checkout -b android-8.0
  git push -f origin android-8.0
else
  echo 'no updates my friends!'
fi
cd ../
done

cd ../
