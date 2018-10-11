#!/bin/bash

for DEVICE in sepolicy common loire blanc kugo suzu tone dora kagura keyaki yoshino lilac maple poplar nile pioneer discovery voyager tama akari apollo akatsuki
do
echo 'Checking for changes in '$DEVICE

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
  git branch -D android-9.0
  git checkout -b android-9.0
  git push -f origin android-9.0
else
  echo 'no updates my friends!'
fi
cd ../
done
