#!/bin/bash

rom_fp="$(date +%y%m%d)"
mkdir -p release/$rom_fp/
set -e

repo init -u https://android.googlesource.com/platform/manifest -b android-vts-8.0_r4
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git pull)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests
fi
repo sync -j 4
(cd device/phh/treble; bash generate.sh)

. build/envsetup.sh

buildVariant() {
	lunch $1
	make BUILD_NUMBER=$rom_fp -j8
	cp out/target/product/generic_arm64_a/system.img release/$rom_fp/system-${2}.img
}

buildVariant treble_arm64_av-userdebug arm64-aonly-vanilla
buildVariant treble_arm64_ag-userdebug arm64-aonly-gapps
#buildVariant treble_arm64_af-userdebug arm64-aonly-foss

buildVariant treble_arm64_abv-userdebug arm64-ab-vanilla
buildVariant treble_arm64_abg-userdebug arm64-ab-gapps
