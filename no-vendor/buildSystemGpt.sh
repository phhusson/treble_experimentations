#!/bin/bash

set -e

rm -f system-gpt
touch system-gpt
if [ "$1" == "-s" ];then
	#Size in bytes
	shift
	truncate -s $1 system-gpt
	presize=1
	shift
else
	truncate -s $((2048*512)) system-gpt
fi

sum=2048
i=1
while [ "$#" -ne 0 ];do
	#partition name
	#file
	simg2img $2 tmp.img
	#resize2fs -M tmp.img
	sz="$(stat -c %s tmp.img)"
	sz=$((sz/512))
	sz=$((sz + 2048 ))
	sz=$((sz / 2048 ))
	sz=$((sz * 2048 ))

	newsum=$((sum+sz+2048)) #Keep 2048 at the end, e.g. for gpt backup

	[ -z "$presize" ] && \
		truncate -s $((newsum*512)) system-gpt

	/sbin/sgdisk -C system-gpt
	/sbin/sgdisk --new=$i:$sum:+$sz system-gpt
	/sbin/sgdisk --change-name=$i:$1 system-gpt

	dd if=tmp.img of=system-gpt conv=notrunc seek=$sum

	sum=$newsum
	shift
	shift
	i=$((i+1))
done
