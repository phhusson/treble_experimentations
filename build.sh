#!/bin/bash

rom_fp="$(date +%y%m%d)"
originFolder="$(dirname "$0")"
mkdir -p release/$rom_fp/
set -e

if [ -z "$USER" ];then
	export USER="$(id -un)"
fi
export LC_ALL=C

manifest_url="https://android.googlesource.com/platform/manifest"
aosp="android-8.1.0_r65"
phh="android-8.1"

build_target="$1"
rebuild_release=""
if [ "$1" == "android-9.0" ];then
    manifest_url="https://gitlab.com/aosp-security/manifest"
    aosp="android-9.0.0_r53-r47"
    phh="android-9.0"
elif [ "$1" == "android-10.0" ];then
    manifest_url="https://android.googlesource.com/platform/manifest"
    aosp="android-10.0.0_r41"
    phh="android-10.0"
elif [ "$1" == "android-11.0" ];then
    manifest_url="https://android.googlesource.com/platform/manifest"
    aosp="android-11.0.0_r37"
    phh="android-11.0"
else
	# guess android version from version number
	rebuild_release="yes"
	if [ -n "$(echo $1 | grep -E '^v3..')" ];then
		build_target="android-11.0"
	elif [ -n "$(echo $1 | grep -E '^v2..')" ];then
		build_target="android-10.0"
	elif [ -n "$(echo $1 | grep -E '^v1..')" ];then
		build_target="android-9.0"
	else
		build_target="android-8.1"
	fi
	# download manifest with the given version number
	tmp_manifest_source=$(mktemp -d)
	wget "https://github.com/phhusson/treble_experimentations/releases/download/$1/manifest.xml" -O $tmp_manifest_source/manifest.xml
	sed -i 's/<remote name="aosp" fetch=".." review="https:\/\/android-review.googlesource.com\/"\/>/<remote name="aosp" fetch="https:\/\/android.googlesource.com\/" review="https:\/\/android-review.googlesource.com\/"\/>/' $tmp_manifest_source/manifest.xml
	(cd $tmp_manifest_source; git init; git add manifest.xml; git commit -m "$1")
fi

if [ "$release" == true ];then
    [ -z "$version" ] && exit 1
    [ ! -f "$originFolder/release/config.ini" ] && exit 1
fi

if [ -n "$rebuild_release" ];then
	repo init -u "$tmp_manifest_source" -m manifest.xml
else
	repo init -u "$manifest_url" -b $aosp
	if [ -d .repo/local_manifests ] ;then
		( cd .repo/local_manifests; git fetch; git reset --hard; git checkout origin/$phh)
	else
		git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b $phh
	fi
fi
repo sync -c -j 1 --force-sync

repo forall -r '.*opengapps.*' -c 'git lfs fetch && git lfs checkout'
(cd device/phh/treble; git clean -fdx; bash generate.sh)
(cd vendor/foss; git clean -fdx; bash update.sh)
rm -f vendor/gapps/interfaces/wifi_ext/Android.bp

. build/envsetup.sh

buildVariant() {
	lunch $1
	make BUILD_NUMBER=$rom_fp installclean
	make BUILD_NUMBER=$rom_fp -j8 systemimage
	make BUILD_NUMBER=$rom_fp vndk-test-sepolicy
	xz -c $OUT/system.img -T0 > release/$rom_fp/system-${2}.img.xz
}

repo manifest -r > release/$rom_fp/manifest.xml
bash "$originFolder"/list-patches.sh
cp patches.zip release/$rom_fp/patches.zip

if [ "$build_target" == "android-11.0" ];then
    (
        git clone https://github.com/phhusson/sas-creator
        cd sas-creator

        git clone https://github.com/phhusson/vendor_vndk -b android-10.0
    )

    # ARM64 vanilla {ab, a-only, ab vndk lite}
	buildVariant treble_arm64_bvS-userdebug roar-arm64-ab-vanilla
    ( cd sas-creator; bash run.sh 64 ; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm64-aonly-vanilla.img.xz)
    ( cd sas-creator; bash lite-adapter.sh 64; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm64-ab-vndklite-vanilla.img.xz )

    # ARM64 floss {ab, a-only, ab vndk lite}
	buildVariant treble_arm64_bfS-userdebug roar-arm64-ab-floss
    ( cd sas-creator; bash run.sh 64 ; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm64-aonly-floss.img.xz)
    ( cd sas-creator; bash lite-adapter.sh 64; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm64-ab-vndklite-floss.img.xz )

    # ARM32 vanilla {ab, a-only}
	buildVariant treble_arm_bvS-userdebug roar-arm-ab-vanilla
    ( cd sas-creator; bash run.sh 32; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm-aonly-vanilla.img.xz )

    # ARM32 gogapps {ab, a-only}
	buildVariant treble_arm_boS-userdebug roar-arm-ab-gogapps
    ( cd sas-creator; bash run.sh 32; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm-aonly-gogapps.img.xz )

    # ARM32_binder64 vanilla {ab, ab vndk lite}
	buildVariant treble_a64_bvS-userdebug roar-arm32_binder64-ab-vanilla
    ( cd sas-creator; bash lite-adapter.sh 32; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm32_binder64-ab-vndklite-vanilla.img.xz)

    # ARM64 Gapps {ab, a-only, ab vndk lite}
	buildVariant treble_arm64_bgS-userdebug roar-arm64-ab-gapps
    ( cd sas-creator; bash run.sh 64 ; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm64-aonly-gapps.img.xz)
    ( cd sas-creator; bash lite-adapter.sh 64; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm64-ab-vndklite-gapps.img.xz )

    # ARM32_binder64 go gapps {ab, ab vndk lite}
	buildVariant treble_a64_boS-userdebug roar-arm32_binder64-ab-gogapps
    ( cd sas-creator; bash lite-adapter.sh 32; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm32_binder64-ab-vndklite-gogapps.img.xz )

    # ARM32_binder64 gapps {ab, ab vndk lite}
	buildVariant treble_a64_bgS-userdebug roar-arm32_binder64-ab-gapps
    ( cd sas-creator; bash lite-adapter.sh 32; xz -c s.img -T0 > ../release/$rom_fp/system-roar-arm32_binder64-ab-vndklite-gapps.img.xz )
elif [ "$build_target" == "android-10.0" ];then
	buildVariant treble_arm64_afS-userdebug quack-arm64-aonly-floss
	buildVariant treble_arm64_avS-userdebug quack-arm64-aonly-vanilla
	buildVariant treble_arm64_agS-userdebug quack-arm64-aonly-gapps
	buildVariant treble_arm64_aoS-userdebug quack-arm64-aonly-go
	buildVariant treble_arm64_bfS-userdebug quack-arm64-ab-floss
	buildVariant treble_arm64_bvS-userdebug quack-arm64-ab-vanilla
	buildVariant treble_arm64_bgS-userdebug quack-arm64-ab-gapps
	buildVariant treble_arm64_boS-userdebug quack-arm64-ab-go
	buildVariant treble_arm_avS-userdebug quack-arm-aonly-vanilla
	buildVariant treble_arm_agS-userdebug quack-arm-aonly-gapps
	buildVariant treble_arm_aoS-userdebug quack-arm-aonly-go
	buildVariant treble_arm_bvS-userdebug quack-arm-ab-vanilla
	buildVariant treble_arm_bgS-userdebug quack-arm-ab-gapps
	buildVariant treble_arm_boS-userdebug quack-arm-ab-go
	buildVariant treble_a64_avS-userdebug quack-arm32_binder64-aonly-vanilla
	buildVariant treble_a64_agS-userdebug quack-arm32_binder64-aonly-gapps
	buildVariant treble_a64_aoS-userdebug quack-arm32_binder64-aonly-go
	buildVariant treble_a64_bvS-userdebug quack-arm32_binder64-ab-vanilla
	buildVariant treble_a64_bgS-userdebug quack-arm32_binder64-ab-gapps
	buildVariant treble_a64_boS-userdebug quack-arm32_binder64-ab-go
else
	buildVariant treble_arm64_avN-userdebug arm64-aonly-vanilla-nosu
	buildVariant treble_arm64_agS-userdebug arm64-aonly-gapps-su
	#buildVariant treble_arm64_afS-userdebug arm64-aonly-floss-su
	rm -Rf out/target/product/phhgsi*

	buildVariant treble_arm64_bvN-userdebug arm64-ab-vanilla-nosu
	buildVariant treble_arm64_bgS-userdebug arm64-ab-gapps-su
	#buildVariant treble_arm64_bfS-userdebug arm64-ab-floss-su
	rm -Rf out/target/product/phhgsi*

	buildVariant treble_arm_avN-userdebug arm-aonly-vanilla-nosu
	[ "$build_target" != "android-9.0" ] && buildVariant treble_arm_aoS-userdebug arm-aonly-go-su
	buildVariant treble_arm_agS-userdebug arm-aonly-gapps-su
	rm -Rf out/target/product/phhgsi*

	buildVariant treble_a64_avN-userdebug arm32_binder64-aonly-vanilla-nosu
	buildVariant treble_a64_agS-userdebug arm32_binder64-aonly-gapps-su
	rm -Rf out/target/product/phhgsi*

	if [ "$build_target" == "android-9.0" ];then
	buildVariant treble_a64_bvN-userdebug arm32_binder64-ab-vanilla-nosu
	buildVariant treble_a64_bgS-userdebug arm32_binder64-ab-gapps-su
	fi
	rm -Rf out/target/product/phhgsi*
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
        [ "$build_target" == "android-9.0" ] && name="AOSP 9.0"
        python $originFolder/release/push.py "$name" "$version" release/$rom_fp/
        rm -Rf venv
    )
fi
