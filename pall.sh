#!/bin/bash

# Read the string from user input
echo "Enter a string:"
read string

# Reverse the string using rev command
reverse=$(echo $string | rev)

# Compare the original and reversed strings
if [ "$string" == "$reverse" ]; then
  echo "The string is a palindrome"
else
  echo "The string is not a palindrome"
fi
