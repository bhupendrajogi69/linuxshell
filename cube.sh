#!/bin/bash

echo "Number  Square  Cube"

for (( i=1; i<=10; i++ ))
do
    square=$((i * i))
    cube=$((i * i * i))
    echo "$i       $square      $cube"
done
