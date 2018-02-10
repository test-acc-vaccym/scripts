#!/bin/bash

cd 4.4

for DEVICE in sepolicy common kanuti tulip loire kugo suzu tone dora kagura keyaki yoshino lilac maple poplar
do
echo 'Checking for changes in '$DEVICE
echo '\n\n'
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
  git branch -D android-8.1
  git checkout -b android-8.1
  git push -f origin android-8.1
else
  echo 'no updates my friends!'
fi
cd ../
done

cd ../
