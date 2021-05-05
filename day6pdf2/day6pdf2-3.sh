#!/bin/bash
FLIP=$(($(($RANDOM%11))%2))
if [ $FLIP -eq 1 ]
then
echo "head"
else
echo "tail"

fi
