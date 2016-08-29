#!/bin/bash

for DEVICE in common rhine amami honami togari shinano castor castor_windy sirius aries leo scorpion scorpion_windy kanuti tulip kitakami ivy karin karin_windy satsuki sumire suzuran loire suzu sepolicy

do
git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/device_sony_$DEVICE && scp -p -P 29418 erikcas@review.sonyaosp.org:hooks/commit-msg device_sony_$DEVICE/.git/hooks/
done

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/platform_hardware_qcom_camera

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/vendor_qcom_opensource_dataservices

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/platform_hardware_sony_macaddrsetup

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/platform_hardware_sony_init

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/platform_hardware_sony_timekeep

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/platform_hardware_sony_thermanager

git clone ssh://erikcas@review.sonyaosp.org:29418/SonyAosp/kernel

