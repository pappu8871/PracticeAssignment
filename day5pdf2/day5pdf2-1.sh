#!/bin/bash
a=$((100 + RANDOM %889+10))
b=$((100 + RANDOM %889+10))
c=$((100 + RANDOM %889+10))
d=$((100 + RANDOM %889+10))
e=$((100 + RANDOM %889+10))
S$
echo "a=$a"
echo "b=$b"
echo "c=$c"
echo "d=$d"
echo "e=$e"

arrayName=( $a $b $c $d $e )

max=${arrayName[0]}
min=${arrayName[0]}

for i in "${arrayName[@]}"
do
  
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

 if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done
echo "Max is: $max"
echo "Min is: $min"
