#!/bin/bash/ -x
declare -A dict

read -p "Enter the input a -->" a
read -p "Enter the input b -->" b
read -p "Enter the input c -->" c

result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
result3=$(( $c + $a / $b ))
result4=$(($a % $b + $c ))

dict["result 1"]=$result
dict["result 2"]=$result2
dict["result 3"]=$result3
dict["result 4"]=$result4

echo "result1: $result"
echo "result2: $result2"
echo "result3: $result3"
echo "result4: $result4"

for(( i=0; i<4; i++ ))
do
	array[$i]="${dict[$i]}"
done
echo ${dict[@]}

for d in ${array[@]}
do
	echo ${array[$d]}
done | sort -nr 


