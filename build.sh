#!/bin/bash

rom_fp="$(date +%y%m%d)"
mkdir -p release/$rom_fp/
set -e

aosp="android-vts-8.0_r4"
phh="master"

if [ "$1" == "8.1" ] ;then
	aosp="android-8.1.0_r29"
	phh="android-8.1"
fi

repo init -u https://android.googlesource.com/platform/manifest -b $aosp
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git fetch; git reset --hard; git checkout origin/$phh)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b $phh
fi
repo sync -c -j 1 --force-sync
(cd device/phh/treble; git clean -fdx; bash generate.sh)

. build/envsetup.sh

buildVariant() {
	lunch $1
	make BUILD_NUMBER=$rom_fp installclean
	make BUILD_NUMBER=$rom_fp -j8 systemimage
	make BUILD_NUMBER=$rom_fp vndk-test-sepolicy
	xz -c $OUT/system.img > release/$rom_fp/system-${2}.img.xz
}

repo manifest -r > release/$rom_fp/manifest.xml
bash $(dirname "$0")/list-patches.sh
cp patches.zip release/$rom_fp/patches.zip

buildVariant treble_arm64_avN-userdebug arm64-aonly-vanilla-nosu
buildVariant treble_arm64_agS-userdebug arm64-aonly-gapps-su

buildVariant treble_arm64_bvN-userdebug arm64-ab-vanilla-nosu
buildVariant treble_arm64_bgS-userdebug arm64-ab-gapps-su

buildVariant treble_arm_avN-userdebug arm-aonly-vanilla-nosu

