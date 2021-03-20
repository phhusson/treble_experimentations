#!/bin/bash

set -e

if [ $# != 1 ];then
    echo "Usage: $0 <url to release gsi>"
    exit 1
fi

umount d || true
rm -Rf s.img s2.img d

wget "$1" -O - |xz -c -d > s.img
simg2img s.img s2.img
rm -f s.img
mkdir -p d
mount -o loop,ro s2.img d

timestamp="$(sed -nE 's/ro.product.build.date.utc=(.*)/\1/p' d/system/product/build.prop)"
flavor="$(sed -nE 's/ro.product.product.name=(.*)/\1/p' d/system/product/build.prop)"
umount d

mkdir -p "$flavor"
echo "$timestamp" >> "$flavor/known_releases"
echo "$timestamp" > "$flavor/date"
echo "$1" > "$flavor/url"
wc -c s2.img |grep -oE '^[0-9]+' > "$flavor/size"
rm -f s2.img
