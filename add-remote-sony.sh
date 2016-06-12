#!/bin/bash

#for DEVICE in scorpion rhine suzuran sumire satsuki karin ivy karin_windy castor_windy scorpion_windy castor aries amami honami seagull tianchi eagle flamingo kitakami kanuti sirius leo togari tulip yukon shinano sepolicy
for DEVICE in common
do
cd device_sony_$DEVICE
git remote add sony https://github.com/sonyxperiadev/device-sony-$DEVICE.git
git fetch sony
cd ../
done

cd kernel
git remote add sony https://github.com/sonyxperiadev/kernel.git
cd ../
