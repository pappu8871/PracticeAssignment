Selection Practice problems with if & else

1.)WAP that reads 5 Random 3 digit value and then outputs the minimum and the maximum value

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





2.).  lear problem


#!/bin/bash
echo "Enter the year (YYYY)"
read year

if [ $((year % 4)) -eq 0 ]
then
  if [ $((year % 100)) -eq 0 ]
    then
    if [ $((year % 400)) -eq 0 ]
          then
        echo "It is  a leap year"
    else
           echo "It is  not a leap year"
    fi
  else
  echo "It is  a leap year"
  fi
else
 echo "It is not a leap year"

fi

(3)  date problem

#!/bin/bash -x
read -p " Enter Date:-" date
read -p " Enter Month:-" Month

if (($Month ==3 && $date >=20 && $date <= 31))
then
        echo $Month $date "True";


elif (($Month ==4 && $date >= 1 && $date <= 31))
then
        echo $Month $date "True";

elif (($Month == 5 && $date >=1 && $date <=31 ))
then
        echo $Month $date "True";
elif (($Month ==6 && $date <=20 ))
then
        echo $Month $date "True";

else

        echo "False";
fi


4). Write a program to simulate a coin flip and print out "Head " or "Tails"accordingly

#!/bin/bash
Head=0
Tails=1
Result=$((RANDOM%2))
if [[ ${Result} -eq 0 ]];
then
    echo "HEADS"
     elif [[${Result} -eq 1 ]];
then
     echo "Tails"
fi



1)Read a single digit number and write the number in words

#!/bin/bash

echo -n "Enter number : "
read n

    case $n in
        0) echo  "zero " ;;
        1) echo  "one " ;;
        2) echo  "two " ;;
        3) echo  "three " ;;
        4) echo  "four " ;;
        5) echo  "five " ;;
        6) echo  "six " ;;
        7) echo  "seven " ;;
        8) echo  "eight " ;;
        9) echo  "nine " ;;
       *)echo "enter value 0 to 1";;
    esac




#!/bin/bash
echo -n "Enter number : "
read n

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

echo "Your number $n in words : "
for (( i=1; i<=$len; i++ ))
do
  
    digit=$(echo $n | cut -c $i)
 
    case $digit in
        0) echo -n "zero " ;;
        1) echo -n "one " ;;
        2) echo -n "two " ;;
        3) echo -n "three " ;;
        4) echo -n "four " ;;
        5) echo -n "five " ;;
        6) echo -n "six " ;;
        7) echo -n "seven " ;;
        8) echo -n "eight " ;;
        9) echo -n "nine " ;;
    esac
done



2).  Read a Number and Display the weekday (Sunday,Monday...)

#!/bin/bash
echo "enter a number"
read n
case $n in
1) echo "Sunday" ;;
2) echo "Monday" ;;
3) echo "Tuesday" ;;
4) echo "Wednesday" ;;
5) echo "Thursday" ;;
6) echo "Friday" ;;
7) echo "Saturday" ;;
*) echo "enter value between 1 to 7" ;;
esac

3.Read aNumber 1, 10 ,100, 1000, and display  unit,ten,hundred...

#!/bin/bash

echo "Enter a value"
 read n

case $n in

1) echo "unit" ;;
10) echo "teen" ;;
100) echo "hundred" ;;
1000) echo "Thousand " ;;
 esac

**

#!/bin/bash
echo -value "Give the number: "
read price

thousands=$((price/1000))
hundreds=$((price%1000/100))
teens=$((price%100/10))
units=$((price%10))

    for ((i=0 ; i<=$thousands; i++ ))
do
    case $thousands in
        0) echo -value "Zero";;
        1) echo -value "onethousands";;
        2) echo -value "twothousands";;
        3) echo -value "threethousands";;
        4) echo -value "fourthousands";;
        5) echo -value "fivethousands";;
        6) echo -value "sixthousands";;
        7) echo -value "seventhousands";;
        8) echo -value "eightthousands";;
        9) echo -value "ninethousands";;
        10) echo -value "tenthousands";;
    esac

done
    for ((i=0 ; i<=$hundreds; i++ ))
do
    case $hundreds in
         0) echo -value "Zero";;
        1) echo -value "onehundreds";;
        2) echo -value "twohundreds";;
        3) echo -value "threehundreds";;
        4) echo -value "fourhundreds";;
        5) echo -value "fivehundreds";;
        6) echo -value "sixhundreds";;
        7) echo -value "sevenhundreds";;
        8) echo -value "eighthundreds";;
        9) echo -value "ninehundreds";;
        10) echo -value "tenhundreds";;

    esac
done
    for ((i=0 ; i<=$teens; i++ ))
do
    case $teens in
 0) echo -value "Zero";;
        1) echo -value "one";;
        2) echo -value "two";;
        3) echo -value "three";;
        4) echo -value "four";;
        5) echo -value "five";;
        6) echo -value "six";;
        7) echo -value "seven";;
        8) echo -value "eight";;
        9) echo -value "nine";;
        10) echo -value "ten";

    esac
done
    for ((i=0 ; i<=$units; i++ ))
do
    case $units in
  0) echo -value "Zero";;
        1) echo -value "one";;
        2) echo -value "two";;
        3) echo -value "three";;
        4) echo -value "four";;
        5) echo -value "five";;
        6) echo -value "six";;
        7) echo -value "seven";;
        8) echo -value "eight";;
        9) echo -value "nine";;
        10) echo -value "ten";

    esac
done
echo "The price is: " 'expr $thousands + $hundreds + $teens + $units'

4). Enter 3 Numbers do following arithmetic operation and 
find the one that is maximum and minimum

#!/bin/bash
echo "Please enter your first number: "
read a
echo "Second number: "
read b
echo "Third number: "
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

********
Selection Practice problem with case statement

1)Read a single digit number and write the number in words


echo -n "Enter number : "
read n

    case $n in
        0) echo  "zero " ;;
        1) echo  "one " ;;
        2) echo  "two " ;;
        3) echo  "three " ;;
        4) echo  "four " ;;
        5) echo  "five " ;;
        6) echo  "six " ;;
        7) echo  "seven " ;;
        8) echo  "eight " ;;
        9) echo  "nine " ;;
       *)echo "enter value 0 to 1";;
    esac


2).  Read a Number and Display the weekday (Sunday,Monday...)

#!/bin/bash
echo "enter a number"
read n
case $n in
1) echo "Sunday" ;;
2) echo "Monday" ;;
3) echo "Tuesday" ;;
4) echo "Wednesday" ;;
5) echo "Thursday" ;;
6) echo "Friday" ;;
7) echo "Saturday" ;;
*) echo "enter value between 1 to 7" ;;
esac

3.Read aNumber 1, 10 ,100, 1000, and display  unit,ten,hundred...


#!/bin/bash
echo -value "Give the number: "
read price

thousands=$((price/1000))
hundreds=$((price%1000/100))
teens=$((price%100/10))
units=$((price%10))

    for ((i=0 ; i<=$thousands; i++ ))
do
    case $thousands in
        0) echo -value "Zero";;
        1) echo -value "onethousands";;
        2) echo -value "twothousands";;
        3) echo -value "threethousands";;
        4) echo -value "fourthousands";;
        5) echo -value "fivethousands";;
        6) echo -value "sixthousands";;
        7) echo -value "seventhousands";;
        8) echo -value "eightthousands";;
        9) echo -value "ninethousands";;
        10) echo -value "tenthousands";;
    esac

done
    for ((i=0 ; i<=$hundreds; i++ ))
do
    case $hundreds in
         0) echo -value "Zero";;
        1) echo -value "onehundreds";;
        2) echo -value "twohundreds";;
        3) echo -value "threehundreds";;
        4) echo -value "fourhundreds";;
        5) echo -value "fivehundreds";;
        6) echo -value "sixhundreds";;
        7) echo -value "sevenhundreds";;
        8) echo -value "eighthundreds";;
        9) echo -value "ninehundreds";;
        10) echo -value "tenhundreds";;

    esac
done
    for ((i=0 ; i<=$teens; i++ ))
do
    case $teens in
 0) echo -value "Zero";;
        1) echo -value "one";;
        2) echo -value "two";;
        3) echo -value "three";;
        4) echo -value "four";;
        5) echo -value "five";;
        6) echo -value "six";;
        7) echo -value "seven";;
        8) echo -value "eight";;
        9) echo -value "nine";;
        10) echo -value "ten";

    esac
done
    for ((i=0 ; i<=$units; i++ ))
do
    case $units in
  0) echo -value "Zero";;
        1) echo -value "one";;
        2) echo -value "two";;
        3) echo -value "three";;
        4) echo -value "four";;
        5) echo -value "five";;
        6) echo -value "six";;
        7) echo -value "seven";;
        8) echo -value "eight";;
        9) echo -value "nine";;
        10) echo -value "ten";

    esac
done
echo "The price is: " 'expr $thousands + $hundreds + $teens + $units'

**
#!/bin/bash

echo "Enter a value"
 read n

case $n in

1) echo "unit" ;;
10) echo "teen" ;;
100) echo "hundred" ;;
1000) echo "Thousand " ;;
 esac




4). Write a program that takes user Inputs and does Unit Conversion of different length units 

**  Feet to Inch

#!/bin/bash -x
echo " Renter a value"
read value

i=$((value * 12))

echo "Total inches is: $i "

** Inch to feet

#!/bin/bash -x
echo " Renter a value"
read value
f=$((value / 12))
echo "Total feet is: $f "


**Meter to Feet

#!/bin/bash -x
echo " Renter a value"
read value

f=$((meter * 3.2808))

echo "Total feet is: $f"

feet to meter
**
#!/bin/bash -x
echo " Renter a value"
read value

m=$((value / 3.2808))

echo "Total meter is: $m"





