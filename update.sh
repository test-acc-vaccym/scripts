#!/bin/bash

cd kernel
echo 'Check for kernel updates'\n\n
git reset --hard
## Remove all files and reset it hard again.
rm-rf * && git reset --hard
git fetch sony

echo 'Yo. I am checking aosp/LA.BR.1.3.3_rb2.14 branch\n\n' 
if git checkout aosp/LA.BR.1.3.3_rb2.14 &&
    git fetch sony aosp/LA.BR.1.3.3_rb2.14 &&
    [ `git rev-list HEAD...sony/aosp/LA.BR.1.3.3_rb2.14 --count` != 0 ]
then
  echo 'kernel update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.BR.1.3.3_rb2.14
  git branch -D aosp/LA.BR.1.3.3_rb2.14
  git checkout -b aosp/LA.BR.1.3.3_rb2.14
  git push -f origin aosp/LA.BR.1.3.3_rb2.14
else
  echo 'no updates my friends!'
fi

echo 'Yo. I am checking aosp/LA.UM.5.7.r1 branch\n\n'
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

echo 'Yo. I am checking aosp/LA.UM.6.4.r1 branch\n\n'
if git checkout aosp/LA.UM.6.4.r1 &&
    git fetch sony aosp/LA.UM.6.4.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.6.4.r1 --count` != 0 ]
then
  echo 'kernel update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.6.4.r1
  git branch -D aosp/LA.UM.6.4.r1
  git checkout -b aosp/LA.UM.6.4.r1
  git push -f origin aosp/LA.UM.6.4.r1
else
  echo 'no updates my friends!'
fi

cd ../

cd platform_hardware_qcom_camera
echo 'Check for camera updates\n\n'
git reset --hard
## Remove all files and reset it hard again.
rm-rf * && git reset --hard
git fetch sony
echo 'Yo. I am checking aosp/LA.BR.1.3.3_rb2.14 branch\n\n'
if git checkout aosp/LA.BR.1.3.3_rb2.14 &&
    git fetch sony aosp/LA.BR.1.3.3_rb2.14 &&
    [ `git rev-list HEAD...sony/aosp/LA.BR.1.3.3_rb2.14 --count` != 0 ]
then
  echo 'camera update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.BR.1.3.3_rb2.14
  git branch -D aosp/LA.BR.1.3.3_rb2.14
  git checkout -b aosp/LA.BR.1.3.3_rb2.14
  git push -f origin aosp/LA.BR.1.3.3_rb2.14
else
  echo 'no updates my friends!'
fi

echo 'Yo. I am checking aosp/LA.UM.5.7.r1 branch\n\n'
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

echo 'Yo. I am checking aosp/LA.UM.6.4.r1 branch\n\n'
if git checkout aosp/LA.UM.6.4.r1 &&
    git fetch sony aosp/LA.UM.6.4.r1 &&
    [ `git rev-list HEAD...sony/aosp/LA.UM.6.4.r1 --count` != 0 ]
then
  echo 'camera update(s) detected! Lets pull changes!'
  git checkout sony/aosp/LA.UM.6.4.r1
  git branch -D aosp/LA.UM.6.4.r1
  git checkout -b aosp/LA.UM.6.4.r1
  git push -f origin aosp/LA.UM.6.4.r1
else
  echo 'no updates my friends!'
fi

cd ../

cd platform_hardware_broadcom_fm
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'qcom fm driver update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_qcom_fm
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'qcom fm driver update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_qcom_location
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'qcom location driver update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_fingerprint
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'data services update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_dataservices
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'data services update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_macaddrsetup
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'mac control update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_thermanager
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'thermal control update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_hardware_sony_timekeep
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'time services update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_packages_apps_ExtendedSettings
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'extended settings update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../

cd platform_packages_apps_FMRadio
git reset --hard
git fetch sony
if git checkout master &&
    git fetch sony master &&
    [ `git rev-list HEAD...sony/master --count` != 0 ]
then
  echo 'fm radio app update(s) detected! Lets pull changes!'
  git checkout sony/master
  git branch -D master
  git checkout -b master
  git push -f origin master
else
  echo 'no updates my friends!'
fi
cd ../
