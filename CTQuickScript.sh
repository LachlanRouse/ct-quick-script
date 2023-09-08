#!/bin/bash
#Written by L Rouse to do simple tasks for Cyber Taipan competition
if [ "$EUID" -ne 0 ]
  then echo "run this crap with sudo"
  exit
fi
echo updating...
apt-get install update
echo upgrading...
apt-get upgrade
echo updates complete