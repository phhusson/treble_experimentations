#!/bin/bash

configXml="$1"
xmlFiles="$(ls *.xml |grep -vF public.xml)"
for key in $(xmlstarlet sel -t -m '//*[@name]' -v ./@name -n "$configXml" );do
	xmlstarlet sel -t -m '//*[@name="'$key'"]' -c . -n "$configXml" | \
		sed -e 's/xmlns:xliff="[^"]*"//g' |\
		sed -e 's/translatable="false"//g' |\
		sed -e 's/string-array/array/g' | \
		xmlstarlet c14n > AOSP
	xmlstarlet sel -t -m '//*[@name="'$key'"]' -c . -n $xmlFiles| \
		sed -e 's/string-array/array/g' | \
		xmlstarlet c14n > ROM
	echo >> AOSP
	echo >> ROM
	if [ "$(md5sum < AOSP)" != "$(md5sum < ROM)" ];then
		echo "Got key = $key"
		diff -B AOSP ROM
	fi
done
