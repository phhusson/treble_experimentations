#!/bin/bash

if [ -z "$REPO_REMOTE" ];then
	rm -Rf patches patches.zip
	TOP=$PWD repo forall -c "bash $(readlink -f -- $0)"
	zip -r patches.zip patches
	rm -Rf patches
	exit $?
fi

git remote get-url phh 2>/dev/null || exit 0
compact_remote="$(git remote get-url phh|cut -d / -f 5)"
original_remote=https://android.googlesource.com/"$(tr _ /  <<<$compact_remote)"
if git fetch --tags $original_remote;then
	echo $REPO_PROJECT
	lastTag="$(git describe --abbrev=0 --match=android-*)"
	patches_out=$TOP/patches/$compact_remote/
	mkdir -p $patches_out
	git format-patch $lastTag..HEAD -o $patches_out
fi
