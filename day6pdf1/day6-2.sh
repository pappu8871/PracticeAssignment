#! /bin/bash -x

read -p "Enter a number:" n
sum=0
for ((counter=1;counter<=$n;counter++))
do
     x=1/$counter
     series=$x
    echo "$series"
done
