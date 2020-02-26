#!/bin/bash -x
echo "Welcome to  Sorting Arithmetic problem" 
#TAKING THE THREE INPUTS  
read -p "Enter the value of a :" a
read -p "Enter the value of b :" b
read -p "Enter the value of c :" c
result=`echo "$a + $b * $c" | bc -l`
#TAKING A NEW  EXP[RESSION AND FINDING A RESULT 
result1=`echo "$a * $b + $c" | bc -l` 
result2=`echo "$c + $a / $b" | bc -l`
result3=`echo "$a % $b / $c" | bc -l` 
echo " Computing the result : $result  "
echo "Computing the result1 : $result1 " 
echo "Computing the result2 : $result2 "
echo "Computing the result3 : $result3 "
