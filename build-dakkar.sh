#!/bin/bash
set -e

if [ -z "$USER" ];then
    export USER="$(id -un)"
fi
export LC_ALL=C
export GAPPS_SOURCES_PATH=vendor/opengapps/sources/

## set defaults

rom_fp="$(date +%y%m%d)"

myname="$(basename "$0")"
if [[ $(uname -s) = "Darwin" ]];then
    jobs=$(sysctl -n hw.ncpu)
elif [[ $(uname -s) = "Linux" ]];then
    jobs=$(nproc)
fi

## handle command line arguments
if [[ -v build_dakkar_choice ]]
then
echo "Using exported choice"
else
read -p "Do you want to sync? (y/N) " build_dakkar_choice
fi
function help() {
    cat <<EOF
Syntax:

  $myname [-j 2] <rom type> <variant>...

Options:

  -j   number of parallel make workers (defaults to $jobs)

ROM types:

  aex-pie
  aex10
  aicp-oreo
  aicp10
  aokp-oreo
  aokp-pie
  aokp10
  aosmp-pie
  aosmp10
  aospa
  aosp80
  aosp81
  aosp90
  aosp10
  aquarios
  carbon-oreo
  carbon10
  crdroid-oreo
  crdroid10
  bootleggers
  e-pie
  e-oreo
  havoc-pie
  havoc10
  komodo-pie
  komodo10
  lineage151
  lineage160
  lineage170
  mokee-oreo
  mokee10
  pixel81
  pixel90
  pixel10
  potato-pie
  potato10
  rebellion-pie
  rebellion10
  rr-oreo
  rr10
  slim-oreo
  slim-pie
  slim10
  graphene9
  graphene10
  atom

Variants are dash-joined combinations of (in order):
* processor type
  * "arm" for ARM 32 bit
  * "arm64" for ARM 64 bit
  * "a64" for ARM 32 bit system with 64 bit binder
* A or A/B partition layout ("aonly" or "ab")
* GApps selection
  * "vanilla" to not include GApps
  * "gapps" to include opengapps
  * "go" to include gapps go
  * "floss" to include floss
* SU selection ("su" or "nosu")
* Build variant selection (optional)
  * "eng" for eng build
  * "user" for prod build
  * "userdebug" for debug build (default)

for example:

* arm-aonly-vanilla-nosu-user
* arm64-ab-gapps-su
* a64-aonly-go-nosu
EOF
}

function get_rom_type() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            aosp80)
                mainrepo="https://android.googlesource.com/platform/manifest.git"
                mainbranch="android-vts-8.0_r4"
                localManifestBranch="master"
                treble_generate="aosp"
                extra_make_options=""
                jack_enabled="true"
                ;;
            aosp81)
                mainrepo="https://android.googlesource.com/platform/manifest.git"
                mainbranch="android-8.1.0_r48"
                localManifestBranch="android-8.1"
                treble_generate="aosp"
                extra_make_options=""
                jack_enabled="true"
                ;;
            aosp90)
                mainrepo="https://android.googlesource.com/platform/manifest.git"
                mainbranch="android-9.0.0_r21"
                localManifestBranch="android-9.0"
                treble_generate="aosp"
                extra_make_options=""
                jack_enabled="false"
                ;;
            aosp10)
                mainrepo="https://android.googlesource.com/platform/manifest.git"
                mainbranch="android-10.0.0_r33"
                localManifestBranch="android-10.0"
                treble_generate="aosp"
                extra_make_options=""
                jack_enabled="false"
                ;;
            carbon-oreo)
                mainrepo="https://github.com/CarbonROM/android.git"
                mainbranch="cr-6.1"
                localManifestBranch="android-8.1"
                treble_generate="carbon"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            carbon10)
                mainrepo="https://github.com/CarbonROM/android.git"
                mainbranch="cr-8.0"
                localManifestBranch="android-10.0"
                treble_generate="carbon"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            e-pie)
                mainrepo="https://gitlab.e.foundation/e/os/android/"
                mainbranch="v1-pie"
                localManifestBranch="android-9.0"
                treble_generate="lineage"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            e-oreo)
                mainrepo="https://gitlab.e.foundation/e/os/android/"
                mainbranch="v1-oreo"
                localManifestBranch="android-8.1"
                treble_generate="lineage"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            lineage151)
                mainrepo="https://github.com/LineageOS/android.git"
                mainbranch="lineage-15.1"
                localManifestBranch="android-8.1"
                treble_generate="lineage"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            lineage160)
                mainrepo="https://github.com/LineageOS/android.git"
                mainbranch="lineage-16.0"
                localManifestBranch="android-9.0"
                treble_generate="lineage"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
	    lineage170)
                mainrepo="https://github.com/LineageOS/android.git"
                mainbranch="lineage-17.0"
                localManifestBranch="android-10.0"
                treble_generate="lineage"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            rr-oreo)
                mainrepo="https://github.com/ResurrectionRemix/platform_manifest.git"
                mainbranch="oreo"
                localManifestBranch="android-8.1"
                treble_generate="rr"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	   rr10)
                mainrepo="https://github.com/ResurrectionRemix/platform_manifest.git"
                mainbranch="10"
                localManifestBranch="android-10.0"
                treble_generate="rr"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            pixel81)
                mainrepo="https://github.com/PixelExperience/manifest.git"
                mainbranch="oreo-mr1"
                localManifestBranch="android-8.1"
                treble_generate="pixel"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            pixel90)
                mainrepo="https://github.com/PixelExperience/manifest.git"
                mainbranch="pie"
                localManifestBranch="android-9.0"
                treble_generate="pixel"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
	   pixel10)
                mainrepo="https://github.com/PixelExperience/manifest.git"
                mainbranch="10"
                localManifestBranch="android-10.0"
                treble_generate="pixel"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;

            potato-pie)
                mainrepo="https://github.com/PotatoProject/manifest.git"
                mainbranch="baked-release"
                localManifestBranch="android-9.0"
                treble_generate="potato"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
	    potato10)
                mainrepo="https://github.com/PotatoProject/manifest.git"
                mainbranch="croquette-release"
                localManifestBranch="android-10.0"
                treble_generate="potato"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            crdroid-oreo)
                mainrepo="https://github.com/crdroidandroid/android.git"
                mainbranch="8.1"
                localManifestBranch="android-8.1"
                treble_generate="crdroid"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	   crdroid10)
                mainrepo="https://github.com/crdroidandroid/android.git"
                mainbranch="10.0"
                localManifestBranch="android-10.0"
                treble_generate="crdroid"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            mokee-oreo)
                mainrepo="https://github.com/mokee/android.git"
                mainbranch="mko-mr1"
                localManifestBranch="android-8.1"
                treble_generate="mokee"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	    mokee10)
                mainrepo="https://github.com/mokee/android.git"
                mainbranch="mkq"
                localManifestBranch="android-10.0"
                treble_generate="mokee"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            aicp-oreo)
                mainrepo="https://github.com/AICP/platform_manifest.git"
                mainbranch="o8.1"
                localManifestBranch="android-8.1"
                treble_generate="aicp"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	    aicp10)
                mainrepo="https://github.com/AICP/platform_manifest.git"
                mainbranch="q10.0"
                localManifestBranch="android-10.0"
                treble_generate="aicp"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            aokp-oreo)
                mainrepo="https://github.com/AOKP/platform_manifest.git"
                mainbranch="oreo"
                localManifestBranch="android-8.1"
                treble_generate="aokp"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	    aokp-pie)
                mainrepo="https://github.com/AOKP/platform_manifest.git"
                mainbranch="pie"
                localManifestBranch="android-9.0"
                treble_generate="aokp"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	    aokp10)
                mainrepo="https://github.com/AOKP/platform_manifest.git"
                mainbranch="10"
                localManifestBranch="android-10.0"
                treble_generate="aokp"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            aex-pie)
                mainrepo="https://github.com/AospExtended/manifest.git"
                mainbranch="9.x"
                localManifestBranch="android-9.0"
                treble_generate="aex"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
	    aex10)
                mainrepo="https://github.com/AospExtended/manifest.git"
                mainbranch="10.x"
                localManifestBranch="android-10.0"
                treble_generate="aex"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            slim-oreo)
                mainrepo="https://github.com/SlimRoms/platform_manifest.git"
                mainbranch="or8.1"
                localManifestBranch="android-8.1"
                treble_generate="slim"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	    slim-pie)
                mainrepo="https://github.com/SlimRoms/platform_manifest.git"
                mainbranch="9.0"
                localManifestBranch="android-9.0"
                treble_generate="slim"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
	    slim10)
                mainrepo="https://github.com/SlimRoms/platform_manifest.git"
                mainbranch="10.0"
                localManifestBranch="android-10.0"
                treble_generate="slim"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="true"
                ;;
            havoc-pie)
                mainrepo="https://github.com/Havoc-OS/android_manifest.git"
                mainbranch="pie"
                localManifestBranch="android-9.0"
                treble_generate="havoc"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            havoc-10)
                mainrepo="https://github.com/Havoc-OS/android_manifest.git"
                mainbranch="10"
                localManifestBranch="android-10.0"
                treble_generate="havoc"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            komodo-pie)
                mainrepo="https://github.com/KomodOS-Rom/platform_manifest.git"
                mainbranch="pie-gsi"
                localManifestBranch="android-9.0"
                treble_generate="komodo"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            komodo10)
                mainrepo="https://github.com/KomodOS-Rom/platform_manifest.git"
                mainbranch="10"
                localManifestBranch="android-10.0"
                treble_generate="komodo"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            rebellion-pie)
                mainrepo="https://github.com/RebellionOS/manifest.git"
                mainbranch="pie"
                localManifestBranch="android-9.0"
                treble_generate="rebellion"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            aquarios)
                mainrepo="https://github.com/aquarios/manifest.git"
                mainbranch="a9"
                localManifestBranch="android-9.0"
                treble_generate="aquarios"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            aquarios10)
                mainrepo="https://github.com/aquarios/manifest.git"
                mainbranch="x"
                localManifestBranch="android-10.0"
                treble_generate="aquarios"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            aosmp-pie)
                mainrepo="https://gitlab.com/AOSmP/android_manifest.git"
                mainbranch="pie"
                localManifestBranch="android-9.0"
                treble_generate="aosmp"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
            aosmp10)
                mainrepo="https://gitlab.com/AOSmP/android_manifest.git"
                mainbranch="ten"
                localManifestBranch="android-10.0"
                treble_generate="aosmp"
                extra_make_options="WITHOUT_CHECK_API=true"
                jack_enabled="false"
                ;;
	    graphene9)
	    	mainrepo="https://github.com/GrapheneOS/platform_manifest.git"
		mainbranch="pie"
		localManifestBranch="android-9.0"
		treble_generate="graphene"
		extra_make_options="WITHOUT_CHECK_API=true"
		jack_enabled="false"
                ;;
	   graphene10)
	   	mainrepo="https://github.com/GrapheneOS/platform_manifest.git"
		mainbranch="10"
		localManifestBranch="android-10.0"
		treble_generate="graphene"
		extra_make_options="WITHOUT_CHECK_API=true"
		jack_enabled="false"
	   aospa)
	   	mainrepo="https://github.com/AOSPA/manifest.git"
		mainbranch="quartz"
		localManifestBranch="android-10.0"
		treble_generate="aospa"
		extra_make_options="WITHOUT_CHECK_API=true"
		jack_enabled="false"
	   atom)
	   	mainrepo="https://github.com/Atom-OS/frameworks_base.git"
		mainbranch="android-10.0"
		localManifestBranch="android-10.0"
		treble_generate="atom"
		extra_make_options="WITHOUT_CHECK_API=true"
		jack_enabled="false"
	   
	esac
        shift
    done
}

function parse_options() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -j)
                jobs="$2";
                shift;
                ;;
        esac
        shift
    done
}

declare -A partition_layout_map
partition_layout_map[aonly]=a
partition_layout_map[ab]=b

declare -A gapps_selection_map
gapps_selection_map[vanilla]=v
gapps_selection_map[gapps]=g
gapps_selection_map[go]=o
gapps_selection_map[floss]=f

declare -A su_selection_map
su_selection_map[su]=S
su_selection_map[nosu]=N

function parse_variant() {
    local -a pieces
    IFS=- pieces=( $1 )

    local processor_type=${pieces[0]}
    local partition_layout=${partition_layout_map[${pieces[1]}]}
    local gapps_selection=${gapps_selection_map[${pieces[2]}]}
    local su_selection=${su_selection_map[${pieces[3]}]}
    local build_type_selection=${pieces[4]}

    if [[ -z "$processor_type" || -z "$partition_layout" || -z "$gapps_selection" || -z "$su_selection" ]]; then
        >&2 echo "Invalid variant '$1'"
        >&2 help
        exit 2
    fi

    echo "treble_${processor_type}_${partition_layout}${gapps_selection}${su_selection}-${build_type_selection}"
}

declare -a variant_codes
declare -a variant_names
function get_variants() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            *-*-*-*-*)
                variant_codes[${#variant_codes[*]}]=$(parse_variant "$1")
                variant_names[${#variant_names[*]}]="$1"
                ;;
            *-*-*-*)
                variant_codes[${#variant_codes[*]}]=$(parse_variant "$1-userdebug")
                variant_names[${#variant_names[*]}]="$1"
                ;;
        esac
        shift
    done
}

## function that actually do things

function init_release() {
    mkdir -p release/"$rom_fp"
}

function init_main_repo() {
    repo init -u "$mainrepo" -b "$mainbranch"
}

function clone_or_checkout() {
    local dir="$1"
    local repo="$2"

    if [[ -d "$dir" ]];then
        (
            cd "$dir"
            git fetch
            git reset --hard
            git checkout origin/"$localManifestBranch"
        )
    else
        git clone https://github.com/phhusson/"$repo" "$dir" -b "$localManifestBranch"
    fi
}

function init_local_manifest() {
    clone_or_checkout .repo/local_manifests treble_manifest
}

download_patches() {
	if [[ $localManifestBranch == android-10.0 ]];then
		githubMatch=v2..
	elif [[ $localManifestBranch == android-9.0 ]];then
		githubMatch=v1..
	else
		githubMatch=v..
	fi
    jq --help > /dev/null
	wantedRelease="$(curl --silent https://api.github.com/repos/phhusson/treble_experimentations/releases |jq -r '.[] | .tag_name' |grep -E "$githubMatch\$" |sort -V | tail -n 1)"
	wget "https://github.com/phhusson/treble_experimentations/releases/download/$wantedRelease/patches.zip" -O patches.zip
	rm -Rf patches
	unzip patches.zip -d patches
}

function init_patches() {
    if [[ -n "$treble_generate" ]]; then
	download_patches

        # We don't want to replace from AOSP since we'll be applying
        # patches by hand
        rm -f .repo/local_manifests/replace.xml

        # Remove exfat entry from local_manifest if it exists in ROM manifest 
        if grep -rqF exfat .repo/manifests || grep -qF exfat .repo/manifest.xml;then
            sed -i -E '/external\/exfat/d' .repo/local_manifests/manifest.xml
        fi

        # should I do this? will it interfere with building non-gapps images?
        # rm -f .repo/local_manifests/opengapps.xml
    fi
}

function sync_repo() {
    repo sync -c -j "$jobs" -f --force-sync --no-tag --no-clone-bundle --optimized-fetch --prune
}

function patch_things() {
    if [[ -n "$treble_generate" ]]; then
        rm -f device/*/sepolicy/common/private/genfs_contexts
        (
            cd device/phh/treble
    if [[ $build_dakkar_choice == *"y"* ]];then
            git clean -fdx
    fi
            bash generate.sh "$treble_generate"
        )
        bash "$(dirname "$0")/apply-patches.sh" patches
    else
        (
            cd device/phh/treble
            git clean -fdx
            bash generate.sh
        )
        repo manifest -r > release/"$rom_fp"/manifest.xml
        bash "$(dirname "$0")"/list-patches.sh
        cp patches.zip release/"$rom_fp"/patches.zip
    fi
}

function build_variant() {
    lunch "$1"
    make $extra_make_options BUILD_NUMBER="$rom_fp" installclean
    make $extra_make_options BUILD_NUMBER="$rom_fp" -j "$jobs" systemimage
    make $extra_make_options BUILD_NUMBER="$rom_fp" vndk-test-sepolicy
    cp "$OUT"/system.img release/"$rom_fp"/system-"$2".img
}

function jack_env() {
    RAM=$(free | awk '/^Mem:/{ printf("%0.f", $2/(1024^2))}') #calculating how much RAM (wow, such ram)
    if [[ "$RAM" -lt 16 ]];then #if we're poor guys with less than 16gb
	export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx"$((RAM -1))"G"
    fi
}

function clean_build() {
    make installclean
    rm -rf "$OUT"
}

parse_options "$@"
get_rom_type "$@"
get_variants "$@"

if [[ -z "$mainrepo" || ${#variant_codes[*]} -eq 0 ]]; then
    >&2 help
    exit 1
fi

# Use a python2 virtualenv if system python is python3
python=$(python -V | awk '{print $2}' | head -c2)
if [[ $python == "3." ]]; then
    if [ ! -d .venv ]; then
        virtualenv2 .venv
    fi
    . .venv/bin/activate
fi

init_release
if [[ $build_dakkar_choice == *"y"* ]];then
    init_main_repo
    init_local_manifest
    init_patches
    sync_repo
fi

patch_things

if [[ $jack_enabled == "true" ]]; then
    jack_env
fi

if [[ -v build_dakkar_clean ]]
then
echo "Using exported clean choice"
else
read -p "Do you want to clean? (y/N) " build_dakkar_clean
fi

if [[ $build_dakkar_clean == *"y"* ]];then
    clean_build
fi

. build/envsetup.sh

for (( idx=0; idx < ${#variant_codes[*]}; idx++ )); do
    build_variant "${variant_codes[$idx]}" "${variant_names[$idx]}"
done
