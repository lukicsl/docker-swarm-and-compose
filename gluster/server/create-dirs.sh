#!/bin/bash

if (whoami != root)
  then echo "Please run as root"
  exit
fi

mkdir /etc/glusterfs
mkdir /var/lib/glusterd
mkdir /var/log/glusterfs
mkdir -p /bricks/brick1/gv0
mkdir /datavol
