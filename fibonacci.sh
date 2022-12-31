#!/bin/bash
start=0
first=1
if [[ -e fibonacci.txt ]]
then
	rm fibonacci.txt
fi
touch fibonacci.txt
echo $start >> fibonacci.txt
echo $first >> fibonacci.txt
for (( x; x<$1;x++ ))
do
	result=$((start+first)) 
	echo $result >> fibonacci.txt
	start=$((first))
	first=$((result))
done
