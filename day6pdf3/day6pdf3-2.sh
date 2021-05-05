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
echo "first number are palindrome"
else
echo "first number are not palindrome"
fi
}
 function palindrome_second(){
while [ $m -gt 0 ]
do
rev=$(expr $rev \* 10)
l=$(expr $m % 10)
rev=$(expr $rev + $l)
m=$(expr $m / 10)
done
if [ $rev -eq $se ]
then
echo "second number are palindrome"
else
echo "second number are not palindrome"
fi

if [ $on -eq $se ]
then
echo "Both number are palindrome"
else
echo "Both number are not palindrome"
fi
}

echo "enter first number"
read n
num=0
on=$n

echo "enter second number"
read m
rev=0
 se=$m
palindrome_first
palindrome_second
