#!/bin/bash

if [ "$#" -lt 2 ];then
    echo "Usage: $0 <system folder> <vendor folder> [density]"
    exit 1
fi

framework_res="$1/framework/framework-res.apk"
if [ ! -f "$framework_res" ];then
    framework_res="$1/system/framework/framework-res.apk"
fi

density=320
if [ -n "$3" ];then
    density="$3"
fi

if [ ! -f "$framework_res" ];then
    echo "Wrong system folder $1"
    exit 1
fi

props="$2/build.prop"
if [ ! -f "$props" ];then
    echo "Wrong vendor folder $2"
    exit 1
fi

decompiled="$(mktemp -d)"
cleanup() {
    rm -Rf "$decompiled"
}
trap cleanup EXIT
java -jar ~phh/Decompil/apktool_2.4.0.jar d -f -o "$decompiled" "$framework_res"

rm -Rf rro
mkdir rro

clean_string() {
    tr 'A-Z' 'a-z' | tr ' .-' '_'
}

prefix="$(sed -nE 's/ro.vendor.build.fingerprint=(.*)/\1/p' "$props" |cut -d : -f 1)"
brand="$(sed -nE 's/ro.product.vendor.brand=(.*)/\1/p' "$props" |clean_string)"
model="$(sed -nE 's/ro.product.vendor.model=(.*)/\1/p' "$props" |clean_string)"

cat > rro/AndroidManifest.xml << EOF
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="me.phh.treble.overlay.$brand.$model"
        android:versionCode="1"
        android:versionName="1.0">
        <overlay android:targetPackage="android"
                android:requiredSystemPropertyName="ro.vendor.build.fingerprint"
                android:requiredSystemPropertyValue="+$prefix"
                android:priority="XXXX"
                android:isStatic="true" />
</manifest>
EOF

cat > rro/Android.mk <<EOF
LOCAL_PATH := \$(call my-dir)
include \$(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := treble-overlay-$brand-$model
LOCAL_MODULE_PATH := \$(TARGET_OUT)/overlay
LOCAL_IS_RUNTIME_RESOURCE_OVERLAY := true
LOCAL_PRIVATE_PLATFORM_APIS := true
include \$(BUILD_PACKAGE)
EOF


mkdir -p rro/res/{values,xml}

# Notch
cat > rro/res/values/notch.xml <<EOF
<?xml version="1.0" encoding="utf-8"?>
<resources>
EOF

get_value() {
    xmlstarlet sel -t -m '//resources/*[not(self::public) and @name="'"$1"'"]' -c . -n "$decompiled"/res/values/*
}

convert_dp() {
    local f="$(mktemp)"
    cat > $f
    values="$(grep -oE '[0-9.]+di?p' "$f")"
    scale="$(echo "scale=8; $density/160" | bc)"
    for v in $values;do
        pre="$(echo "$v" |grep -oE '[0-9.]+')"
        post="$(echo "scale=8; $pre * $scale" | bc)"
        post="$(LC_ALL=C printf '%.0f' $post)"
        sed -i -E -e "s/>${pre}(di?p)/>${post}px/g" "$f"
    done
    cat "$f"
    rm -f "$f"
}

get_value status_bar_height_portrait |convert_dp >> rro/res/values/notch.xml
get_value status_bar_height_landscape |convert_dp >> rro/res/values/notch.xml
get_value config_mainBuiltInDisplayCutout |convert_dp >> rro/res/values/notch.xml

cat >> rro/res/values/notch.xml <<EOF
</resources>
EOF

cp "$decompiled"/res/xml/power_profile.xml rro/res/xml/

#Auto brightness
cat > rro/res/values/brightness.xml <<EOF
<?xml version="1.0" encoding="utf-8"?>
<resources>
EOF
if get_value config_autoBrightnessDisplayValuesNits  >> rro/res/values/brightness.xml;then
    get_value config_screenBrightnessBacklight >> rro/res/values/brightness.xml
else
    get_value config_autoBrightnessLevels >> rro/res/values/brightness.xml
    get_value config_autoBrightnessLcdBacklightValues >> rro/res/values/brightness.xml
fi
cat >> rro/res/values/brightness.xml <<EOF
</resources>
EOF
