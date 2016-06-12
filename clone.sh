#!/bin/bash

for DEVICE in scorpion rhine suzuran sumire satsuki karin ivy karin_windy castor_windy scorpion_windy castor aries amami honami seagull tianchi eagle flamingo kitakami kanuti sirius leo togari tulip yukon shinano 

do
#git clone --bare https://github.com/SonyAosp/device_sony_$DEVICE.git
git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/device_sony_$DEVICE && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg device_sony_$DEVICE/.git/hooks/
done

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/kernel

