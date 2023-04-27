#!/bin/bash

echo "Currently logged user: $USER"
echo "Logname: $LOGNAME"
echo "Current shell: $SHELL"
echo "Home directory: $HOME"
echo "Operating system type: $(uname -s)"
echo "Current path setting: $PATH"
echo "Current working directory: $(pwd)"
echo "Currently logged number of users: $(who | wc -l)"
echo "Memory information:"
free -m
echo "Hard disk information:"
df -h
echo "File system mounted:"
mount | column -t
