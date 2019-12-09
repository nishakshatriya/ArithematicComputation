#!/bin/bash/ -x
declare -A dict

read -p "Enter the input a -->" a
read -p "Enter the input b -->" b
read -p "Enter the input c -->" c

result=$(( $a + $b * $c ))
echo $result
result2=$(( $a * $b + $c ))
echo $result2
result3=$(( $c + $a / $b ))
echo $result3
result4=$(($a % $b + $c ))
echo $result4

dict["result1"]=$result
dict["result2"]=$result2
dict["result3"]=$result3
dict["result4"]=$result4

for(( i=0; i<=4; i++ ))
do
	array[$i]="${dict[result$i]}"
done

echo ${dict[@]}

#DESCENDING ORDER
for acs in ${!array[@]}
do
	echo ${array[$acs]}
done | sort -nr

#ASCENDING ORDER
for dec in ${!array[@]}
do
	echo ${array[dec]}
done | sort -n
