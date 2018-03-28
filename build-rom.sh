#!/bin/bash
if [[ ${0##*/} == -* ]]; then
echo "Do not source the file!"
echo "Run it as bash"
echo " ./build-rom.sh"
return 1
else
echo
fi


rom_fp="$(date +%y%m%d)"
mkdir -p release/$rom_fp/
set -e
nl=`echo -e $'\n.'`
nl=${nl%.}

read -e -i "android-8.1" -p "manifest branch for device tree: " localManifestBranch
echo -e $'\n'
read -e -i "all" -p "Type of build? $nl a for arm64 A_only partition $nl b for arm64 A/B $nl a_arm for arm A_only $nl 'all' for building all types $nl >> " buildtype
echo -e $'\n'
read -e -p "Number of jobs? (number) (def:all) " jobv
echo -e $'\n'
read -e -n1 -i "Y" -p "Sync the ROM again (Y/N) " syncv
echo -e $'\n'
read -e -n1 -i "Y" -p "Patch the ROM (Y/N) " patchv
echo -e $'\n'
read -e -n1 -i "Y" -p "Clean the build dir and trees? (Y/N) " cleanv
echo -e $'\n'
read -e -p "ROM name: " rom
if [ -n "$jobv" ]
   then
	jobs=$jobv
   else
	jobs=$(nproc)
fi

if [ "$syncv" = "Y" ]; then
echo "Syncing @ j=${jobs}"
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git fetch; git reset --hard; git checkout origin/$localManifestBranch)
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b $localManifestBranch
fi
rm -f .repo/local_manifests/replace.xml

if [ -d patches ];then
    ( cd patches; git fetch; git reset --hard; git checkout origin/$localManifestBranch)
else
    git clone https://github.com/phhusson/treble_patches patches -b $localManifestBranch
fi
repo sync -c -j${jobs} --force-sync
elif [ "$syncv" = "N" ]; then
echo "Will not sync"
else
exit "Wrong choice of sync"
fi


if [ "$cleanv" = "Y" ]; then
echo Cleaning
# We don't want to replace from AOSP since we'll be applying patches by hand
rm -f .repo/local_manifests/replace.xml
rm -f .repo/local_manifests/opengapps.xml
(cd device/phh/treble; git clean -fdx; bash generate.sh $rom)
elif [ "$cleanv" = "N" ]; then
echo "Will not clean the repos and DIRs"
else
exit "Wrong choice of clean"
fi


if [ "$patchv" = "Y" ]; then
echo Patching
bash "$(dirname "$0")/apply-patches.sh" patches
elif [ "$patchv" = "N" ]; then
echo "Will not patch"
else
exit "Wrong choice of patch"
fi

function buildVar {
. build/envsetup.sh
	lunch $lname
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp installclean
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp -j${jobs} systemimage
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp vndk-test-sepolicy
	cp $OUT/system.img release/$rom_fp/system-${rom}-${lname}.img

repo manifest -r > release/$rom_fp/manifest.xml
}

function build {
echo "$nl Building $nl"
echo "Partition layout is:$nl $buildtype"

case $buildtype in
"a")
lname=treble_arm64_avN-userdebug
buildVar treble_arm64_avN-userdebug arm64-aonly
;;
"b")
lname=treble_arm64_bvN-userdebug
buildVar treble_arm64_bvN-userdebug arm64-ab
;;
"a_arm")
lname=treble_arm64_avN-userdebug
buildVar treble_arm_avN-userdebug arm-aonly
;;
"all")
lname=treble_arm64_avN-userdebug
buildVar treble_arm64_avN-userdebug arm64-aonly
lname=treble_arm64_bvN-userdebug
buildVar treble_arm64_bvN-userdebug arm64-ab
lname=treble_arm64_avN-userdebug
buildVar treble_arm_avN-userdebug arm-aonly
;;
*)
echo "	Missing"
echo -e '\n'
echo "Chose a right build target"
exit 1
esac
}

build
