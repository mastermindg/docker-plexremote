#!/bin/bash

# Script to dockerize Plex Remote Transcoder

# Need a minimum of two machines - 1 for Plex Server and 1 for the PRT Slave
# Arguments

serverhost=$1
slavehost=$2
nfshost=$3

# Create NFS mounts on both hosts
ssh root@$serverhost "mount $nfshost/config /config; mount $nfshost/data /data; adduser plex -u 800 -g 801; chown plex:plex /config; chown plex:plex /data"
ssh root@$slavehost "mount $nfshost/config /config; mount $nfshost/data /data; adduser plex -u 800 -g 801; chown plex:plex /config; chown plex:plex /data"

# Start Plex server
docker build -t mastermindg/docker-plex docker-plex

# Start PRT slave
docker build -t mastermindg/prt-slave prt-slave

