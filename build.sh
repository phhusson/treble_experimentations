#!/bin/bash

rom_version="$(date +%Y%m%j.%H%M)"
mkdir -p release/$rom_version/
rom_fp="$(date +%Y%m%j)"
set -e

repo init -u https://android.googlesource.com/platform/manifest -b android-vts-8.0_r4
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git pull)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests
fi
repo sync -j 4

. build/envsetup.sh
lunch aosp_arm64_a-userdebug
make BUILD_NUMBER=$rom_fp -j8
cp out/target/product/generic_arm64_a/system.img release/$rom_version/system-arm64-aonly.img

lunch aosp_arm64_ab-userdebug
make BUILD_NUMBER=$rom_fp -j8
cp out/target/product/generic_arm64_ab/system.img release/$rom_version/system-arm64-ab.img
