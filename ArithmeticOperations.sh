#!/bin/bash/ -x

read -p "Enter the input a -->" a
read -p "Enter the input b -->" b
read -p "Enter the input c -->" c

result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
result3=$(( $c + $a / $b ))
result4=$(($a % $b + $c ))

echo "result1: $result"
echo "result2: $result2"
echo "result3: $result3"
echo "result4: $result4"
