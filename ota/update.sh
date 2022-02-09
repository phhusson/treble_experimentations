#!/bin/bash

set -ex

vers="$1"

if [ -z "$vers" ];then
    echo "Usage: $0 <github version name>"
    exit 1
fi

rm -f ota-list.json
minUtc=""
for i in /home/phh/Treble/treble_experimentations/cloud/release/release/220208/*.xz;do

    # Grab props
    unxz -dc $i |strings |grep -E -e ro.system.build.fingerprint= -e ro.build.flavor= -e ro.system.build.date.utc= > tmpprops

    utc=$(sed -n -E -e 's/ro.system.build.date.utc=//p' tmpprops)
    flavor=$(sed -n -E -e 's/ro.build.flavor=//p' tmpprops |sed -E 's/-user.*//g')
    if echo "$i" |grep -qE secure;then
        flavor="$flavor-secure"
    elif echo "$i" |grep -qE vndklite;then
        flavor="$flavor-vndklite"
    fi

    if [ "$minUtc" == "" ] || [ "$utc" -le "$minUtc" ];then
        minUtc="$utc"
    fi
    size="$(du -s "$i" |grep -oE '^[0-9]+')"
    url=https://github.com/phhusson/treble_experimentations/releases/download/"$vers"/"$(basename "$i")"
    cat >> ota-list.json << EOF
{ "name": "$flavor", "size": $size, "url": "$url"},
EOF
done

# Add a stupid entry to not have to remove the trailing `,`
echo '{ "name": "useless", "size": 0, "url": "http://devnull.org"}' >> ota-list.json

# Optimism
minUtc=$((minUtc-100))

cat > ota.json << EOF
{
    "version": "$vers",
    "date": "$minUtc",
    "variants": [
EOF
cat ota-list.json >> ota.json

cat >> ota.json << EOF
    ]
}
EOF
