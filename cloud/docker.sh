#!/bin/bash

if [ "$#" -ne 1 ];then
	echo "Usage: $0 <android-9.0|android-8.1>"
	exit 1
fi

android_version="$1"

set -ex

cleanup() {
	if [ -n "$name" ];then
        docker kill "$name"
        docker rm "$name"
	fi
}

run_script () {
    docker exec "$name" sh -c "$1"
}

orig_docker="$(which docker)"
docker() {
    $orig_docker "$@"
}

trap 'cleanup' ERR
trap 'cleanup' EXIT

suffix="$(echo "$RANDOM" |md5sum |cut -c 1-8)"
name="phh-treble-$suffix"

echo "Running build on $name"

docker run --privileged --name "$name" --rm -d ubuntu:20.04 sleep infinity

docker exec "$name" echo "Good morning, now building"

run_script 'for i in $(seq 0 24);do mknod /dev/loop$i b 7 $i;done'

run_script 'export DEBIAN_FRONTEND=noninteractive && dpkg --add-architecture i386 && \
	apt-get update && \
	(yes "" | apt-get install -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold" \
		aapt \
		build-essential \
		imagemagick \
		xorriso \
		locales \
		openjdk-8-jdk \
        python-is-python3 \
		git \
		m4 \
		unzip \
		bison \
		zip \
		gperf \
        libncurses5 \
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
		xmlstarlet \
		python3-pip \
		git \
       wget \
       xattr \
       || true )'

run_script 'curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo; chmod 0755 /usr/bin/repo'

run_script '
	git config --global user.name "Pierre-Hugues Husson" && \
	git config --global user.email phh@phh.me && \
	git config --global color.ui auto'

run_script 'curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash ; apt install git-lfs; git lfs install'

run_script 'git clone https://github.com/phhusson/treble_experimentations'

run_script 'echo >> /etc/hosts ; echo 84.38.177.154 git.rip >> /etc/hosts'

run_script '\
	mkdir build-dir && \
	sed -E -i "s/(repo sync.*)-j 1/\1-j16/g" treble_experimentations/build.sh && \
	sed -E -i "s/(make.*)-j8/\1-j48/g" treble_experimentations/build.sh
	'

run_script "cd build-dir && bash ../treble_experimentations/build.sh $android_version"

docker cp "$name:"/build-dir/release release

