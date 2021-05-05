#!/bin/bash

function prime(){
for((i=2; i<=$n/i; i++))
do
  p=$(( n%i ))
  if [ $p -eq 0 ]
  then
    echo "$n is not a prime number."
   exit 0
  fi
done
echo "$n is a prime number."
}

echo -e "Enter a  Number :"
read n
prime
