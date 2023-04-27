#!/bin/bash

echo "Enter the limit for Fibonacci series: "
read limit

# Recursive function to generate the Fibonacci series
fib() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        echo $(( $(fib $(( $1 - 1 )) ) + $(fib $(( $1 - 2 )) ) ))
    fi
}

# Loop to print the Fibonacci series up to the limit
for (( i=0; i<limit; i++ )); do
    echo $(fib $i)
done
