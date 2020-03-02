#!/bin/bash

if [ -z "$SSH_AGENT_PID" ];then
	eval $(ssh-agent)
	ssh-add
fi

if [ "$#" -ne 1 ];then
	echo "Usage: $0 <android-9.0|android-8.1>"
	exit 1
fi

android_version="$1"

set -ex

cleanup() {
	if [ -n "$name" ];then
		scw rm -f "$name"
	fi
}

run_script() {
	echo "$1" > script.sh
	scw cp script.sh "$name":/tmp/
	scw exec "$name" 'bash /tmp/script.sh < /dev/null'
}

trap 'cleanup' ERR
trap 'cleanup' EXIT

COMMERCIAL_TYPE="GP1-L"
suffix="$(echo "$RANDOM" |md5sum |cut -c 1-8)"
name="phh-treble-$suffix"

echo "Running build on $name"

machine="$(scw run --ip-address=dynamic --commercial-type "$COMMERCIAL_TYPE" -d --name="$name" 'ubuntu-bionic$')"
echo "... also called $machine"
#scw attach --no-stdin "$name" &

scw exec -w "$name" echo "Good morning, now building"
rm -f ~/.scw-cache.db
machine_ip="$(scw inspect server:$machine |jq -r '.[0]|.public_ip.address')"
ssh -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "root@$machine_ip" echo "Tested ssh successfully"
run_script 'export DEBIAN_FRONTEND=noninteractive && dpkg --add-architecture i386 && \
	apt-get update && \
	(yes "" | apt-get install -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold" \
		build-essential \
		imagemagick \
		xorriso \
		locales \
		openjdk-8-jdk \
		python \
		git \
		m4 \
		unzip \
		bison \
		zip \
		gperf \
		libxml2-utils \
		zlib1g:i386 \
		libstdc++6:i386 \
		bc \
		curl \
		lzop \
		lzip \
		lunzip \
		squashfs-tools \
		sudo \
		repo \
		xmlstarlet \
		python-pip \
		python3-pip \
		git )'

run_script '
	git config --global user.name "Pierre-Hugues Husson" && \
	git config --global user.email phh@phh.me && \
	git config --global color.ui auto'

run_script 'git clone https://github.com/phhusson/treble_experimentations'

run_script '\
	mkdir build-dir && \
	sed -E -i "s/(repo sync.*)-j 1/\1-j64/g" treble_experimentations/build.sh && \
	sed -E -i "s/(make.*)-j8/\1-j24/g" treble_experimentations/build.sh
	'

run_script "cd build-dir && bash ../treble_experimentations/build.sh $android_version"

rsync -e 'ssh -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' -rv "root@$machine_ip:build-dir/release" release
