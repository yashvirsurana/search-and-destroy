#!/bin/bash

ssh -q $2 ARG2=$2 ARG1=$1 'bash -s' <<'ENDSSH'

    name=$(finger | head -2 | tail -1 | cut -d' ' -f3)
    # echo $name
    # echo "SSHING INTO >>> " $ARG2
    # echo $ARG1
    name=$(echo $name | tr A-Z a-z)
    # echo $name
    if [ $name = $ARG1 ]
    then
        hostname | cut -d'.' -f1
    fi
ENDSSH
true
