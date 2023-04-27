#!/bin/bash

while true; do
    echo "Choose an option:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Remainder"
    echo "6. Exit"

    read choice

    if [ $choice -eq 6 ]; then
        break
    fi

    echo "Enter first number: "
    read num1

    echo "Enter second number: "
    read num2

    if [ $choice -eq 1 ]; then
        result=$((num1 + num2))
        echo "Result: $result"
    elif [ $choice -eq 2 ]; then
        result=$((num1 - num2))
        echo "Result: $result"
    elif [ $choice -eq 3 ]; then
        result=$((num1 * num2))
        echo "Result: $result"
    elif [ $choice -eq 4 ]; then
        result=$((num1 / num2))
        echo "Result: $result"
    elif [ $choice -eq 5 ]; then
        result=$((num1 % num2))
        echo "Result: $result"
    else
        echo "Invalid choice"
    fi
done
