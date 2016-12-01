#!/bin/bash


name=$(finger | head -2 | tail -1 | cut -d' ' -f3)
# echo $name
# hostname
# echo $ARG1
name=$(echo $name | tr A-Z a-z)
# echo $name
if [ $name = $1 ]
then
    # echo "FOUND AT >>>>> $(hostname | cut -d'.' -f1)"
    hostname | cut -d'.' -f1
fi


