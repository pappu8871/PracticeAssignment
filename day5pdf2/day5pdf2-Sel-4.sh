#!/bin/bash
echo "Please enter your value a: "
read a
echo "plz enter your value b: "
read b
echo "plz enter your value c: "
read c
p=$(( a + b * c ))
echo "p:$p"

q=$(( c + a / c ))
echo "q:$q"

r=$(( a % b + c ))
echo "r:$r"

s=$(( a * b + c ))
echo "s:$s"
arrayName=( $p $q $r $s )

max=${arrayName[0]}
min=${arrayName[0]}

# Loop through all elements in the array
for i in "${arrayName[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done
# Output results:
echo "Max is: $max"
echo "Min is: $min"
