#!/bin/bash -x
echo "Welcome to  Sorting Arithmetic problem" 
#TAKING THE THREE INPUTS  
read -p "Enter the value of a :" a
read -p "Enter the value of b :" b
read -p "Enter the value of c :" c
result=`echo "$a + $b * $c" | bc -l`
echo " Computing the result : $result "
