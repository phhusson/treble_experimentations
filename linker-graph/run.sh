#!/bin/bash

ndk="(liblog.so|libdl.so|ld-android.so|libm.so|libc.so)"
parse() {
    echo -e "${2}${1}"
    if echo "$1" |grep -qE "$ndk";then
        return
    fi
    if [ -f "$(basename "$1")" ];then
        return
    fi
    adb wait-for-device pull "$1" > /dev/null 2>/dev/null
    for so in $(LC_ALL=C readelf -d "$(basename "$1")"  |sed -nE 's/.*NEEDED.*\[([^]]*)\].*/\1/p');do
        if [[ $1 =~ /lib64/ ]];then
            lib=lib64
        else
            lib=lib
        fi
        found=false
        for path in /odm/$lib /vendor/$lib /system/$lib/vndk-sp-26 /system/$lib;do
            if adb wait-for-device pull "$path"/"$so"  > /dev/null 2>/dev/null;then
                parse "$path"/"$so" "${2}\t"
                found=true
                break
            fi
        done
        if ! $found;then
            echo "Lib $so not found"
        fi
    done
}

tmp="$(mktemp -d)"
pushd "$tmp"
parse "$1" ""
popd
rm -Rf $tmp
