#!/bin/bash

rom_fp="$(date +%y%m%d)"
originFolder="$(dirname "$0")"
mkdir -p release/$rom_fp/
set -e

if [ "$#" -le 1 ];then
	echo "Usage: $0 <android-8.1> <carbon|lineage|rr> '# of jobs'"
	exit 0
fi
localManifestBranch=$1
rom=$2

if [ "$release" == true ];then
    [ -z "$version" ] && exit 1
    [ ! -f "$originFolder/release/config.ini" ] && exit 1
fi

if [ -z "$USER" ];then
	export USER="$(id -un)"
fi
export LC_ALL=C

if [[ -n "$3" ]];then
	jobs=$3
else
    if [[ $(uname -s) = "Darwin" ]];then
        jobs=$(sysctl -n hw.ncpu)
    elif [[ $(uname -s) = "Linux" ]];then
        jobs=$(nproc)
    fi
fi

#We don't want to replace from AOSP since we'll be applying patches by hand
rm -f .repo/local_manifests/replace.xml
if [ "$rom" == "carbon" ];then
	repo init -u https://github.com/CarbonROM/android -b cr-6.1
elif [ "$rom" == "lineage" ];then
	repo init -u https://github.com/LineageOS/android.git -b lineage-15.1
elif [ "$rom" == "rr" ];then
	repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b oreo
fi

if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git fetch; git reset --hard; git checkout origin/$localManifestBranch)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b $localManifestBranch
fi

if [ -z "$local_patches" ];then
    if [ -d patches ];then
        ( cd patches; git fetch; git reset --hard; git checkout origin/$localManifestBranch)
    else
        git clone https://github.com/phhusson/treble_patches patches -b $localManifestBranch
    fi
else
    rm -Rf patches
    mkdir patches
    unzip  "$local_patches" -d patches
fi

#We don't want to replace from AOSP since we'll be applying patches by hand
rm -f .repo/local_manifests/replace.xml

repo sync -c -j$jobs --force-sync
rm -f device/*/sepolicy/common/private/genfs_contexts
(cd device/phh/treble; git clean -fdx; bash generate.sh $rom)

sed -i -e 's/BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736/BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648/g' device/phh/treble/phhgsi_arm64_a/BoardConfig.mk

if [ -f vendor/rr/prebuilt/common/Android.mk ];then
    sed -i \
        -e 's/LOCAL_MODULE := Wallpapers/LOCAL_MODULE := WallpapersRR/g' \
        vendor/rr/prebuilt/common/Android.mk
fi

bash "$(dirname "$0")/apply-patches.sh" patches

. build/envsetup.sh

buildVariant() {
	lunch $1
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp installclean
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp -j$jobs systemimage
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp vndk-test-sepolicy
	xz -c $OUT/system.img > release/$rom_fp/system-${2}.img.xz
}

repo manifest -r > release/$rom_fp/manifest.xml
buildVariant treble_arm64_avN-userdebug arm64-aonly-vanilla-nosu
buildVariant treble_arm64_agS-userdebug arm64-aonly-gapps-su
buildVariant treble_arm64_bvN-userdebug arm64-ab-vanilla-nosu
buildVariant treble_arm64_bgS-userdebug arm64-ab-gapps-su
buildVariant treble_arm_avN-userdebug arm-aonly-vanilla-nosu
buildVariant treble_arm_aoS-userdebug arm-aonly-gapps

if [ "$release" == true ];then
    (
        rm -Rf venv
        pip install virtualenv
        export PATH=$PATH:~/.local/bin/
        virtualenv -p /usr/bin/python3 venv
        source venv/bin/activate
        pip install -r $originFolder/release/requirements.txt

        python $originFolder/release/push.py "${rom^}" "$version" release/$rom_fp/
        rm -Rf venv
    )
fi
