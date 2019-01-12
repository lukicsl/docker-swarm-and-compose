#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
 
mkdir -p /opt/gluster/glusterfs
mkdir -p /opt/gluster/glusterd
mkdir -p /opt/gluster/log
mkdir -p /opt/gluster/bricks/brick1/gv0
