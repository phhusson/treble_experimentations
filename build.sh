#!/bin/bash

rom_fp="$(date +%y%m%d)"
originFolder="$(dirname "$0")"
mkdir -p release/$rom_fp/
set -e

if [ -z "$USER" ];then
	export USER="$(id -un)"
fi
export LC_ALL=C

aosp="android-8.1.0_r46"
phh="android-8.1"

if [ "$1" == "android-9.0" ];then
    aosp="android-9.0.0_r8"
    phh="android-9.0"
fi

if [ "$release" == true ];then
    [ -z "$version" ] && exit 1
    [ ! -f "$originFolder/release/config.ini" ] && exit 1
fi


repo init -u https://android.googlesource.com/platform/manifest -b $aosp
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git fetch; git reset --hard; git checkout origin/$phh)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b $phh
fi
repo sync -c -j 1 --force-sync
(cd device/phh/treble; git clean -fdx; bash generate.sh)
(cd vendor/foss; git clean -fdx; bash update.sh)

. build/envsetup.sh

buildVariant() {
	lunch $1
	make BUILD_NUMBER=$rom_fp installclean
	make BUILD_NUMBER=$rom_fp -j8 systemimage
	make BUILD_NUMBER=$rom_fp vndk-test-sepolicy
	xz -c $OUT/system.img > release/$rom_fp/system-${2}.img.xz
}

repo manifest -r > release/$rom_fp/manifest.xml
bash "$originFolder"/list-patches.sh
cp patches.zip release/$rom_fp/patches.zip

if [ "$1" == "android-9.0" ];then
buildVariant treble_arm64_avS-userdebug arm64-aonly-vanilla-su
buildVariant treble_arm64_bvS-userdebug arm64-ab-vanilla-su
buildVariant treble_arm_avS-userdebug arm-aonly-vanilla-su
else
buildVariant treble_arm64_avN-userdebug arm64-aonly-vanilla-nosu
buildVariant treble_arm64_agS-userdebug arm64-aonly-gapps-su
buildVariant treble_arm64_afS-userdebug arm64-aonly-floss-su

buildVariant treble_arm64_bvN-userdebug arm64-ab-vanilla-nosu
buildVariant treble_arm64_bgS-userdebug arm64-ab-gapps-su
buildVariant treble_arm64_bfS-userdebug arm64-ab-floss-su

buildVariant treble_arm_avN-userdebug arm-aonly-vanilla-nosu
buildVariant treble_arm_aoS-userdebug arm-aonly-go-su
fi

if [ "$release" == true ];then
    (
        rm -Rf venv
        pip install virtualenv
        export PATH=$PATH:~/.local/bin/
        virtualenv -p /usr/bin/python3 venv
        source venv/bin/activate
        pip install -r $originFolder/release/requirements.txt

        name="AOSP 8.1"
        [ "$1" == "android-9.0" ] && name="AOSP 9.0"
        python $originFolder/release/push.py "$name" "$version" release/$rom_fp/
        rm -Rf venv
    )
fi
