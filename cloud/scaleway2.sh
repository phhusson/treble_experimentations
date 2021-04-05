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
	if [ -n "$machineid" ];then
		scw instance server terminate "$machineid"
	fi
}

trap 'cleanup' ERR
trap 'cleanup' EXIT

suffix="$(echo "$RANDOM" |md5sum |cut -c 1-8)"
name="phh-docker-host-$suffix"

scw instance server create image=ubuntu_focal type=GP1-L name="$name" ip=dynamic

machineid="$(scw instance server list -o json |jq -r 'map(select(.name == "'$name'"))[0] | .id')"

scw instance server wait "$machineid"

machine_ip="$(scw instance server wait "$machineid" -o json|jq -r .public_ip.address)"

for i in $(seq 1 20);do
    if ssh -o ControlMaster=no -S none -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "root@$machine_ip" echo "Tested ssh successfully";then
        break
    fi
    sleep 1
done
ssh -o ControlMaster=no -S none -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "root@$machine_ip" echo "Tested ssh successfully"

remote() {
    cmd=""
    for i in "$@";do
        cmd="$cmd $(printf '%q' "$i")"
    done
    ssh -o ControlMaster=no -S none -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "root@$machine_ip" $cmd
}

remote apt-get update
remote DEBIAN_FRONTEND=noninteractive apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

remote su -c 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -'

remote add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

remote apt-get update
remote DEBIAN_FRONTEND=noninteractive apt-get -y install docker-ce docker-ce-cli containerd.io

ssh -o ControlMaster=no -S none -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "root@$machine_ip" -L 9999:/var/run/docker.sock sleep infinity &

sleep 5
docker ps

export DOCKER_HOST=tcp://localhost:9999
bash docker.sh "$android_version"

scw instance server terminate "$machineid"
scw instance server wait "$machineid"
scw instance delete "$machineid"
