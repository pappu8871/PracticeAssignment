#!/bin/bash

a=$((( RANDOM %89)+10))
b=$((( RANDOM %89)+10))
c=$((( RANDOM %89)+10))
d=$((( RANDOM %89)+10))
e=$((( RANDOM %89)+10))

 sum=$(( a + b + c + d + e ))
  avg=$(($sum/5))

echo "a=$a"
echo "b=$b"
echo "c=$c"
echo "d=$d"
echo "e=$e"

 echo "sum=$sum"
echo "avg=$avg"
