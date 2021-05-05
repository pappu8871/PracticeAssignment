#!/bin/bash
Head=0
Tails=1
Result=$((RANDOM%2))
if [[ ${Result} -eq 0 ]];
then
    echo "HEADS"
     elif [[${Result} -eq 1 ]];
then
     echo "Tails"
fi
