#!/bin/sh

##################################
# Start in Docker Image          #
##################################

# Check that UVHOME is set
#if [ "$UVHOME" == "" ]; then
##  script_name=$(basename "$0")
#  echo "$script_name: ERROR - UVHOME is not set. Please set UVHOME and PATH before invoking this script."
#  exit 1
#fi

#export PATH=$PATH:$UVHOME/bin


if [ ! -d "/data" ]
then
   mkdir /data
fi


if [ ! -f "/usr/dockersetup.txt" ]
then
#   rm /usr/uv/UV.ACCOUNT
#   ln -s /data/universe/UV.ACCOUNT /usr/uv/UV.ACCOUNT
   touch /usr/dockersetup.txt
fi

#if [ ! -d "/data/accuterm" ]
#then
#  tar xvzf /tmp/data.tgz -C /
#fi

rm -rf /run/nologin
#/usr/sbin/sshd -D
# # Keep script running 
tail -f /dev/null