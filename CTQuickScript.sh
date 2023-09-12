#!/bin/bash
#Written by L Rouse to do simple tasks for Cyber Taipan competition
if [ "$EUID" -ne 0 ] #checks if script is being run as super user
  then echo "run this crap with sudo plz"
  exit
fi
read -p "HAVE YOU DONE FORENSICS? (y/n)" forensics #confirms that the user wishes to run the script
if [[ $forensics = y || $forensics = Y ]] ; then #commmences script
echo "beginning script..."
elif [[ $forensics = n || $forensics = N ]] ; then #stops script
echo "Do the forensics before running this script unless otherwise instructed"
exit
else
echo "not y or n, ending script" #stops script due to invalid input
exit
fi
echo "updating..."
apt-get install update
echo "upgrading..."
apt-get upgrade
echo "updates complete"

