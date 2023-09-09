#!/bin/bash
#Written by L Rouse to do simple tasks for Cyber Taipan competition
if [ "$EUID" -ne 0 ]
  then echo "run this crap with sudo plz"
  exit
fi
read -p "HAVE YOU DONE FORENSICS? (y/n)"
if [[ $REPLY =~ ^[Nn]$ ]]
  then echo "Do the forensics before running this script unless otherwise instructed"
  exit
elif [[ $REPLY =~ ^[Yy]$ ]]
  then #commmences script
else
  then echo "not y or n, ending script"
  exit
fi
echo updating...
apt-get install update
echo upgrading...
apt-get upgrade
echo updates complete