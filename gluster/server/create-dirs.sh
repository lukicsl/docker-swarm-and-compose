#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
 
mkdir -p /etc/glusterfs
mkdir -p /var/lib/glusterd
mkdir -p /var/log/glusterfs
mkdir -p /bricks/brick1/gv0
