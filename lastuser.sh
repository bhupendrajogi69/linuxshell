#!/bin/bash

# check if script is being run as root user
if [ $(id -u) -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# iterate over all users and print last login details
for USER in $(awk -F':' '{print $1}' /etc/passwd); do
  LAST_LOGIN=$(last -n 1 -F $USER | awk '{print $4 " " $5 " " $6 " " $7 " " $8}')
  echo "User '$USER' last logged in on: $LAST_LOGIN"
done

