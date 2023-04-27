#!/bin/bash

# check if filename and word arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <filename> <word>"
  exit 1
fi

FILENAME=$1
WORD=$2

# delete all lines containing the specified word from the file
sed -i "/$WORD/d" $FILENAME

# display success message
echo "All lines containing '$WORD' removed from '$FILENAME'."
