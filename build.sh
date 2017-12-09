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

buildVariant() {
	lunch $1
	make BUILD_NUMBER=$rom_fp -j8
	cp out/target/product/generic_arm64_a/system.img release/$rom_version/system-${2}.img
}

buildVariant aosp_arm64_a-userdebug arm64-aonly
buildVariant aosp_arm64_a_gapps-userdebug arm64-aonly-gapps
buildVariant aosp_arm64_a_foss-userdebug arm64-aonly-foss

buildVariant aosp_arm64_ab-userdebug arm64-ab
buildVariant aosp_arm64_ab_gapps-userdebug arm64-ab-gapps
buildVariant aosp_arm64_ab_foss-userdebug arm64-ab-foss
