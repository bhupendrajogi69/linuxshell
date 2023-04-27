#!/bin/bash

str1="Hello, world!"
str2=""

# 1. Check if the given string operand size is non-zero
if [ -n "$str1" ]; then
    echo "str1 is non-zero in size"
else
    echo "str1 is zero in size"
fi

# 2. Check if the given string operand size is zero
if [ -z "$str2" ]; then
    echo "str2 is zero in size"
else
    echo "str2 is non-zero in size"
fi

# 3. Check if the value of two operands are equal
if [ "$str1" = "Hello, world!" ]; then
    echo "str1 is equal to 'Hello, world!'"
else
    echo "str1 is not equal to 'Hello, world!'"
fi

# 4. Check if the value of two operands are not equal
if [ "$str2" != "Hello, world!" ]; then
    echo "str2 is not equal to 'Hello, world!'"
else
    echo "str2 is equal to 'Hello, world!'"
fi

# 5. Check if str is not the empty string; if it is empty
if [ -n "$str2" ]; then
    echo "str2 is not the empty string"
else
    echo "str2 is the empty string"
fi
