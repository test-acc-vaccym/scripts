#!/bin/bash

git config --global user.name "Erik Castricum"
git config --global user.email "erikcas1972@gmail.com"

cd device_sony_common
git reset --hard
git fetch sony
if git checkout m-mr1 &&
    git fetch sony m-mr1 &&
    [ `git rev-list HEAD...sony/m-mr1 --count` != 0 ]
then
  echo 'Sony M device update(s) detected! Lets pull changes!'
  git checkout sony/m-mr1
  git branch -D m-mr1
  git checkout -b m-mr1
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git fetch https://review.sonyaosp.org/device_sony_common refs/changes/83/183/1 && git cherry-pick FETCH_HEAD
  git push -f origin mm-6.0
  #git push -f gh mm-6.0
else
  echo 'no updates my friends!'
fi
if git checkout l-mr1 &&
    git fetch sony l-mr1 &&
    [ `git rev-list HEAD...sony/l-mr1 --count` != 0 ]
then
  echo 'Sony L device update(s) detected! Lets pull changes!'
  git checkout sony/l-mr1
  git branch -D l-mr1
  git checkout -b l-mr1
  git branch -D lp-5.1
  git checkout -b lp-5.1
  git fetch http://gerrit.sonyaosp.org/device_sony_common refs/changes/65/65/1 && git cherry-pick FETCH_HEAD
  git push -f origin lp-5.1
  #git push -f gh lp-5.1
else
  echo 'no updates my friends!'
fi
cd ../

cd device_sony_sepolicy
git reset --hard
git fetch sony
if git checkout m-mr1 &&
    git fetch sony m-mr1 &&
    [ `git rev-list HEAD...sony/m-mr1 --count` != 0 ]
then
  echo 'Sony M device update(s) detected! Lets pull changes!'
  git checkout sony/m-mr1
  git branch -D m-mr1
  git checkout -b m-mr1
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git push -f origin mm-6.0
  #git push -f gh mm-6.0
else
  echo 'no updates my friends!'
fi
#if git checkout l-mr1 &&
#    git fetch sony l-mr1 &&
#    [ `git rev-list HEAD...sony/l-mr1 --count` != 0 ]
#then
#  echo 'Sony L device update(s) detected! Lets pull changes!'
#  git checkout sony/l-mr1
#  git branch -D l-mr1
#  git checkout -b l-mr1
#  git branch -D lp-5.1
#  git checkout -b lp-5.1
#  git push -f origin lp-5.1
#  #git push -f gh lp-5.1
#else
#  echo 'no updates my friends!'
#fi
cd ../

cd device_sony_shinano
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'Sony M device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git fetch https://review.sonyaosp.org/device_sony_shinano refs/changes/69/169/1 && git cherry-pick FETCH_HEAD
  git push -f origin mm-6.0
  #git push -f gh mm-6.0
else
  echo 'no updates my friends!'
fi
if git checkout l-mr1 &&
    git fetch sony l-mr1 &&
    [ `git rev-list HEAD...sony/l-mr1 --count` != 0 ]
then
  echo 'Sony L device update(s) detected! Lets pull changes!'
  git checkout sony/l-mr1
  git branch -D l-mr1
  git checkout -b l-mr1
  git branch -D lp-5.1
  git checkout -b lp-5.1
  git fetch http://gerrit.sonyaosp.org/device_sony_common refs/changes/65/65/1 && git cherry-pick FETCH_HEAD
  git push -f origin lp-5.1
  #git push -f gh lp-5.1
else
  echo 'no updates my friends!'
fi
cd ../

for DEVICE in scorpion rhine suzuran sumire satsuki karin ivy karin_windy castor_windy scorpion_windy castor aries amami honami seagull tianchi eagle flamingo kitakami kanuti sirius leo togari tulip yukon

do
cd device_sony_$DEVICE
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'Sony M device update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git push -f origin mm-6.0
  #git push -f gh mm-6.0
else
  echo 'no updates my friends!'
fi
if git checkout l-mr1 &&
    git fetch sony l-mr1 &&
    [ `git rev-list HEAD...sony/l-mr1 --count` != 0 ]
then
  echo 'Sony L device update(s) detected! Lets pull changes!'
  git checkout sony/l-mr1
  git branch -D l-mr1
  git checkout -b l-mr1
  git branch -D lp-5.1
  git checkout -b lp-5.1
  git push -f origin lp-5.1
  #git push -f gh lp-5.1
else
  echo 'no updates my friends!'
fi
cd ../
done            
