#!/bin/bash

# check if script is being run as root user
if [ $(id -u) -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# navigate to /var/log directory
cd /var/log

# delete all log files
rm -rf *.log
