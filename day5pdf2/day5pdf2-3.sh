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
