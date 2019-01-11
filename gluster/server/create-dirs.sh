#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
 
mkdir /etc/glusterfs
mkdir /var/lib/glusterd
mkdir /var/log/glusterfs
mkdir -p /bricks/brick1/gv0
mkdir /datavol
