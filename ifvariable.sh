#!/bin/bash
if [ "$#" -eq 1 ] 
    then
    if [ -d "$1" ]
        then
            echo "$1"
            cd "$1"
            ls -1 | wc -l
    elif [ -f "$1" ]
        then 
            wc -c "$1"
    else
        echo "$1"
    fi
else
    echo "Erreur"
    exit 2
fi
