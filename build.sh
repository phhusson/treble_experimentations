#!/bin/bash

rom_version="$(date +%Y%m%j.%H%M)"
mkdir -p release/$rom_version/
rom_fp="$(date +%Y%m%j)"
set -e

repo init -u https://android.googlesource.com/platform/manifest -b android-8.1.0_r1
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git fetch origin android-8.1; git checkout android-8.1)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b android-8.1
fi
repo sync -j 4

. build/envsetup.sh

buildVariant() {
	lunch $1
	make BUILD_NUMBER=$rom_fp -j8
	cp out/target/product/generic_arm64_a/system.img release/$rom_version/system-${2}.img
}

buildVariant aosp_arm64_a-userdebug arm64-aonly
buildVariant aosp_arm64_ab-userdebug arm64-ab
