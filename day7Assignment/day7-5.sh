
#! /bin/bash -x

declare -a reptnum
c=0
for i in {1..100}

do
   if [ $((i%10)) -eq $((i/10)) ]
   then
    reptnum[(( c++ ))]=$i
   #echo "$i"
   fi
done

echo ${reptnum[*]}

