#!/bin/bash

function prime(){
for((i=2; i<=$m/i; i++))
do
  p=$(( m%i ))
  if [ $p -eq 0 ]
  then
    echo "$m is not a prime number."
   exit 0
  fi
done
echo "$m is a prime number."
}



function palindrome(){

while [ $n -gt 0 ]
do
num=$(expr $num \* 10)
k=$(expr $n % 10)
num=$(expr $num + $k)
n=$(expr $n / 10)
done
if [ $num -eq $on ]
then
echo " "$on" number are palindrome"
else
echo " "$on" number are not palindrome"
fi

if [ $num -eq $m ]
then
echo "Palindrome is also prime number"
else
echo "palindrome ia not a prime no"
fi
}

echo -e "Enter a check prime  Number :"
read m
prime

echo -e "enter a check palindrome number"
read n
num=0
on=$n
palindrome

