#!/bin/bash
 function palindrome_first(){

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
echo "first number are not palindrome"
fi
}

echo "enter first number"
read n
num=0
on=$n
palindrome_first
