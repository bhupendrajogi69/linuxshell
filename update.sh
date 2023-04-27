#!/bin/bash

# check if script is being run as root user
if [ $(id -u) -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# update package lists and upgrade packages
apt update && apt upgrade -y

# clean up packages and dependencies
apt autoremove -y
apt autoclean
