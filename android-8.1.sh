#!/bin/bash

for DEVICE in sepolicy common loire blanc kugo suzu tone dora kagura keyaki yoshino lilac maple poplar nile pioneer discovery tama akari apollo akatsuki
do
echo 'Checking for changes in '$DEVICE

cd device_sony_$DEVICE
git reset --hard
git fetch sony
if git checkout o-mr1 &&
    git fetch sony o-mr1 &&
    [ `git rev-list HEAD...sony/o-mr1 --count` != 0 ]
then
  echo 'device update(s) detected! Lets pull changes!'
  git checkout sony/o-mr1
  git branch -D o-mr1
  git checkout -b o-mr1
  git branch -D android-8.1
  git checkout -b android-8.1
  git push -f origin android-8.1
else
  echo 'no updates my friends!'
fi
cd ../
done
