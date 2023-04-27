#!/bin/bash

# check if script is being run as root user
if [ $(id -u) -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# prompt for username and password
read -p "Enter username: " USERNAME
read -s -p "Enter password: " PASSWORD
echo

# create user with home directory and default shell
useradd -m -s /bin/bash $USERNAME

# set user password
echo "$USERNAME:$PASSWORD" | chpasswd

# display success message
echo "User '$USERNAME' created with password '$PASSWORD'."

