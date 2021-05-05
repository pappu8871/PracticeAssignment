#!/bin/bash
read -p "Enter number:" num

j=0
primefactors=2
for (( i=2; i<=$num; i++ ))
do
    while [ $(($num%$i)) == 0 ]
    do
        primefactors[((j++))]=$i
        num=$(($num/$i))
        #echo $i
    done
done
declare -a primefactors

 echo ${primefactors[@]}
