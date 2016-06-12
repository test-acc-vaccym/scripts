#!/bin/bash

git config --global user.name "Erik Castricum"
git config --global user.email "erikcas1972@gmail.com"
cd kernel
git fetch origin
if git checkout origin/mm-6.0 &&
    git fetch sony aosp/LA.BF64.1.2.2_rb4.7 &&
    [ `git rev-list HEAD...sony/aosp/LA.BF64.1.2.2_rb4.7 --count` != 0 ]
then
  echo 'Sony M kernel updated! Lets pull changes!'
  git fetch origin
  git fetch sony
  git checkout sony/aosp/LA.BF64.1.2.2_rb4.7
  git branch -D mm-6.0
  git checkout -b mm-6.0
  git fetch https://review.sonyaosp.org/kernel refs/changes/67/167/1 && git cherry-pick FETCH_HEAD
  git fetch https://review.sonyaosp.org/kernel refs/changes/68/168/1 && git cherry-pick FETCH_HEAD
git push -f origin mm-6.0
else
  echo 'no updates my friends!'
fi
if git checkout origin/lp-5.1 &&
    git fetch sony aosp/LA.BF64.1.1_rb1.27 &&
    [ `git rev-list HEAD...sony/aosp/LA.BF64.1.1_rb1.27 --count` != 0 ]
then
  echo 'Sony L kernel updated! Lets pull changes!'
  git checkout sony/aosp/LA.BF64.1.1_rb1.27
  git branch -D lp-5.1
  git checkout -b lp-5.1 
  git push -f origin lp-5.1
else
  echo 'no updates my friends!'
fi
cd ../
