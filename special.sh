#!/bin/bash

echo "Enter a character:"
read char

if [[ "$char" =~ [AEIOUaeiou] ]]
then
    echo "The character is a vowel."
elif [[ "$char" =~ [BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz] ]]
then
    echo "The character is a consonant."
elif [[ "$char" =~ [0-9] ]]
then
    echo "The character is a digit."
else
    echo "The character is a special character."
fi
