#!/bin/bash

rom_fp="$(date +%y%m%d)"
mkdir -p release/$rom_fp/
set -e

aosp="android-vts-8.0_r4"
phh="master"

if [ "$1" == "8.1" ] ;then
	aosp="android-8.1.0_r14"
	phh="android-8.1"
fi

repo init -u https://android.googlesource.com/platform/manifest -b $aosp
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git fetch; git reset --hard; git checkout origin/$phh)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b $phh
fi
repo sync -j 1
(cd device/phh/treble; git clean -fdx; bash generate.sh)

. build/envsetup.sh

buildVariant() {
	lunch $1
	make BUILD_NUMBER=$rom_fp installclean
	make BUILD_NUMBER=$rom_fp -j8 systemimage
	cp $OUT/system.img release/$rom_fp/system-${2}.img
}

repo manifest -r > release/$rom_fp/manifest.xml
buildVariant treble_arm64_avN-userdebug arm64-aonly-vanilla-nosu
buildVariant treble_arm64_agS-userdebug arm64-aonly-gapps-su

buildVariant treble_arm64_bvN-userdebug arm64-ab-vanilla-nosu
buildVariant treble_arm64_bgS-userdebug arm64-ab-gapps-su
