#!/bin/bash

rom_fp="$(date +%y%m%d)"
mkdir -p release/$rom_fp/
set -e

if [ "$#" -le 1 ];then
	echo "Usage: $0 <android-8.1> <carbon|lineage|rr> '# of jobs'"
	exit 0
fi
localManifestBranch=$1
rom=$2

if [[ -n "$3" ]];then
	jobs=$3
else
    if [[ $(uname -a) = "Darwin" ]];then
        jobs=$(sysctl -n hw.ncpu)
    elif [[ $(uname -a) = "Linux" ]];then
        jobs=$(nproc)
    fi
fi

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

if [ -d patches ];then
    ( cd patches; git fetch; git reset --hard; git checkout origin/$localManifestBranch)
else
    git clone https://github.com/phhusson/treble_patches patches -b $localManifestBranch
fi

#We don't want to replace from AOSP since we'll be applying patches by hand
rm -f .repo/local_manifests/replace.xml
rm -f .repo/local_manifests/opengapps.xml

repo sync -c -j$jobs --force-sync
(cd device/phh/treble; git clean -fdx; bash generate.sh $rom)

bash "$(dirname "$0")/apply-patches.sh" patches

. build/envsetup.sh

buildVariant() {
	lunch $1
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp installclean
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp -j$jobs systemimage
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp vndk-test-sepolicy
	cp $OUT/system.img release/$rom_fp/system-${2}.img
}

repo manifest -r > release/$rom_fp/manifest.xml
buildVariant treble_arm64_avN-userdebug arm64-aonly
buildVariant treble_arm64_bvN-userdebug arm64-ab
buildVariant treble_arm_avN-userdebug arm-aonly
