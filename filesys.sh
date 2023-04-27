#!/bin/bash

filename="file.txt"

# 1. Checks if file is a block special file
if [ -b $filename ]
then
    echo "$filename is a block special file"
else
    echo "$filename is not a block special file"
fi

# 2. Checks if file is a character special file
if [ -c $filename ]
then
    echo "$filename is a character special file"
else
    echo "$filename is not a character special file"
fi

# 3. Checks if file is a directory
if [ -d $filename ]
then
    echo "$filename is a directory"
else
    echo "$filename is not a directory"
fi

# 4. Checks if file is an ordinary file as opposed to a directory or special file
if [ -f $filename ]
then
    echo "$filename is an ordinary file"
else
    echo "$filename is not an ordinary file"
fi

# 5. Checks if file has its set group ID (SGID) bit set
if [ -g $filename ]
then
    echo "$filename has its set group ID (SGID) bit set"
else
    echo "$filename does not have its set group ID (SGID) bit set"
fi

# 6. Checks if file has its sticky bit set
if [ -k $filename ]
then
    echo "$filename has its sticky bit set"
else
    echo "$filename does not have its sticky bit set"
fi

# 7. Checks if file is a named pipe
if [ -p $filename ]
then
    echo "$filename is a named pipe"
else
    echo "$filename is not a named pipe"
fi

# 8. Checks if file descriptor is open and associated with a terminal
if [ -t $filename ]
then
    echo "file descriptor for $filename is open and associated with a terminal"
else
    echo "file descriptor for $filename is not open and associated with a terminal"
fi

# 9. Checks if file has its Set User ID (SUID) bit set
if [ -u $filename ]
then
    echo "$filename has its Set User ID (SUID) bit set"
else
    echo "$filename does not have its Set User ID (SUID) bit set"
fi

# 10. Checks if file is readable
if [ -r $filename ]
then
    echo "$filename is readable"
else
    echo "$filename is not readable"
fi

# 11. Checks if file is writable
if [ -w $filename ]
then
    echo "$filename is writable"
else
    echo "$filename is not writable"
fi

# 12. Checks if file is executable
if [ -x $filename ]
then
    echo "$filename is executable"
else
    echo "$filename is not executable"
fi

# 13. Checks if file has size greater than 0
if [ -s $filename ]
then
    echo "$filename has size greater than 0"
else
    echo "$filename does not have size greater than 0"
fi

# 14. Checks if file exists
if [ -e $filename ]
then
    echo "$filename exists"
else
    echo "$filename does not exist"
fi
