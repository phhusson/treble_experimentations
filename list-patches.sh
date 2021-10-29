#!/bin/bash

# How does this script work?
# This script levarages "repo forall" to walk through all repositories by
# calling itself via repo forall.
#
# Why is it required?
# This script gathers all the patches applied to make the GSI work,
# and then later re-apply the patches to other distros.


# Phase 1: Initial Start
#
# if $REPO_REMOTE is not (yet) set (i.e. which is done by repo forall) then start the repo forall
if [ -z "$REPO_REMOTE" ];then
	rm -Rf patches patches.zip
	TOP=$PWD repo forall -c "bash $(readlink -f -- $0)"
	zip -r patches.zip patches
	rm -Rf patches
	exit $?
fi

# Phase 2: Foreach Git Repo
#
# We only end up here if $REPO_REMOTE is set (i.e. the script was called by repo forall)
# -> and we are inside a git repository

# check if this repo is modified (i.e. pulled from phh), exit/abort if not
git remote get-url phh 2>/dev/null || exit 0
git fetch --unshallow phh $REPO_RREV


# if repo comes from phh, then get all the changes done against the "official" aosp source
compact_remote="$(git remote get-url phh|cut -d / -f 5)"
original_remote=https://android.googlesource.com/"$(tr _ /  <<<$compact_remote)"
if git fetch --tags $original_remote;then
	echo $REPO_PROJECT
	lastTag="$(git describe --abbrev=0 --match=android-*)"
	patches_out=$TOP/patches/$compact_remote/
	mkdir -p $patches_out
	git format-patch $lastTag..HEAD -o $patches_out
fi
