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
