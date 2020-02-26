#!/bin/bash -x
echo "Welcome to  Sorting Arithmetic problem" 
#TAKING THE THREE INPUTS
declare -A Arithmetic
declare -a ArithmeticArray  
read -p "Enter the value of a :" a
read -p "Enter the value of b :" b
read -p "Enter the value of c :" c
result1=`echo "$a + $b * $c" | bc -l`
Arithmetic[1]="$result1"
#TAKING A NEW  EXP[RESSION AND FINDING A RESULT 
result2=`echo "$a * $b + $c" | bc -l`
Arithmetic[2]="$result2"
result3=`echo "$c + $a / $b" | bc -l`
Arithmetic[3]="$result3"
result4=`echo "$a % $b / $c" | bc -l` 
Arithmetic[4]="$result4"
echo "Computing the result1 :"${!Arithmetic[@]}  : ${Arithmetic[@]}  "
echo "Computing the result2 :"${!Arithmetic[@]}  : ${Arithmetic[@]} " 
echo "Computing the result3 :"${!Arithmetic[@]}  : ${Arithmetic[@]} "
echo "Computing the result4 :"${!Arithmetic[@]}  : ${Arithmetic[@]} "
for value in ${!Arithmetic[@]}
do
		ArithmeticArray[$value]="${Arithmetic[$value]}"
done
#SORTING THE  ELEMENTS  INTO DESCENDING ORDER
 
for  count1 in ${!ArithmeticArray[@]}
do
		for count2 in ${!ArithmeticArray[@]}
		do
				if (( `echo "${ArithmeticArray[$count1]}>${ArithmeticArray[$count2]}" | bc -l` ))
				then
						temp="${ArithmeticArray[$count1]}"
						ArithmeticArray[$count1]="${ArithmeticArray[$count2]}"
						ArithmeticArray[$count2]=$temp
				fi
		done
done
echo "Sorted Array in Descending Order : ${ArithmeticArray[@]}"

