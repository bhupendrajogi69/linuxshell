#!/bin/bash

# check if script is being run as root user
if [ $(id -u) -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# check if hostname and IP address arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <hostname> <ip_address>"
  exit 1
fi

HOSTNAME=$1
IP_ADDRESS=$2

# add hostname and IP address to /etc/hosts file
echo "$IP_ADDRESS $HOSTNAME" >> /etc/hosts

# display success message
echo "Host '$HOSTNAME' with IP address '$IP_ADDRESS' added to /etc/hosts file."
