#!/bin/bash

# Holds the name of the subdirectory of the output folder where the built images will go, so that we don't overwrite the older ones.
rom_fp="$(date +%y%m%d)"
# Remember the folder in which this script is (treble_experimentations)
originFolder="$(dirname "$0")"
# Create output folder
mkdir -p release/$rom_fp/
# If there are errors, exit immediately
set -e

# Make sure that the USER variable exists, and set it if it doesn't in order to avoid failures.
if [ -z "$USER" ];then
	export USER="$(id -un)"
fi
# Set English as the language for the build process. Error reports will be generated in English
export LC_ALL=C

# Set initial repo parameters
manifest_url="https://android.googlesource.com/platform/manifest"
aosp="android-8.1.0_r65"
phh="android-8.1"

# Read the first argument passed when the script was executed and set the repo arguments accordingly
if [ "$1" == "android-9.0" ];then
    manifest_url="https://gitlab.com/aosp-security/manifest"
    aosp="android-9.0.0_r53-r47"
    phh="android-9.0"
elif [ "$1" == "android-10.0" ];then
    manifest_url="https://android.googlesource.com/platform/manifest"
    aosp="android-10.0.0_r40"
    phh="android-10.0"
fi

# Used for phh's release process. Can be ignored
if [ "$release" == true ];then
    [ -z "$version" ] && exit 1
    [ ! -f "$originFolder/release/config.ini" ] && exit 1
fi

# Repo init the selected Android Source Branch
repo init -u "$manifest_url" -b $aosp
# Check if phh's treble_manifest is already present in the local_manifests
if [ -d .repo/local_manifests ] ;then
	( cd .repo/local_manifests; git fetch; git reset --hard; git checkout origin/$phh)
# If it isn't, clone phh's treble_manifest
else
	git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b $phh
fi
# Download the source files according to the manifests
repo sync -c -j 1 --force-sync

# Tell git to fetch opengapps, since repo cannot handle LFS (Large File Storage)
repo forall -r '.*opengapps.*' -c 'git lfs fetch && git lfs checkout'
# Call the generate.sh script in the treble device's folder to generate the build flavors
(cd device/phh/treble; git clean -fdx; bash generate.sh)
# Download the FLOSS apps to use in the ROM
(cd vendor/foss; git clean -fdx; bash update.sh)
# For Google Pixel devices : remove wifi_ext from gapps
rm -f vendor/gapps/interfaces/wifi_ext/Android.bp

# Prepare the build environment
. build/envsetup.sh

# Define the function that will handle the build process
buildVariant() {
	# Execute lunch command with the BUILD FLAVOR argument to prepare for the build
	lunch $1
	# Clean the target folder
	make BUILD_NUMBER=$rom_fp installclean
	# Create the system image
	make BUILD_NUMBER=$rom_fp -j8 systemimage
	# Perform SELinux policy tests
	make BUILD_NUMBER=$rom_fp vndk-test-sepolicy
	# Pack everything nicely into an xz archive to reduce the size of the resulting images
	xz -c $OUT/system.img -T0 > release/$rom_fp/system-${2}.img.xz
}

# Pack the state of every git in the repo into one file to know what commits went into the build
repo manifest -r > release/$rom_fp/manifest.xml
# Execute the list-patches script from the cloned treble_experimentations folder to fetch the available patches
bash "$originFolder"/list-patches.sh
# Take the patches.zip archive and copy it into the output folder
cp patches.zip release/$rom_fp/patches.zip

# Decide what kinds of system images we will build
if [ "$1" = "android-10.0" ];then
	# Call the buildVariant function and pass the build flavor parameter
	# TIP: You can comment the flavors that you don't want
	#  COMMAND           BUILD FLAVOR           OUTPUT FILE NAME
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
	[ "$1" != "android-9.0" ] && buildVariant treble_arm_aoS-userdebug arm-aonly-go-su
	buildVariant treble_arm_agS-userdebug arm-aonly-gapps-su
	rm -Rf out/target/product/phhgsi*

	buildVariant treble_a64_avN-userdebug arm32_binder64-aonly-vanilla-nosu
	buildVariant treble_a64_agS-userdebug arm32_binder64-aonly-gapps-su
	rm -Rf out/target/product/phhgsi*

	if [ "$1" = "android-9.0" ];then
	buildVariant treble_a64_bvN-userdebug arm32_binder64-ab-vanilla-nosu
	buildVariant treble_a64_bgS-userdebug arm32_binder64-ab-gapps-su
	fi
	rm -Rf out/target/product/phhgsi*
fi

# Used for phh's release process. Can be ignored
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
