  
#!/bin/bash -x
echo "enter an number"
read n

echo "--------"
 for((i=1;i<=n;i++))
do
if [[ $i%15 -eq 0 ]]
then
echo "FiZZBuZZ"

elif [[ $i%5 -eq 0 ]]
then
echo "BuZZ"


elif [[ $i%3 -eq 0 ]]
then
echo "FiZZ"

else
echo "$i"
    fi
done
