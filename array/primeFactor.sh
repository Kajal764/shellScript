#!/bin/bash -x

echo "enter a no"
read a
declare -a arr
j=0
for(( i=2;i<=$a;i++ ))
do
	while [[ $(($a%$i)) -eq 0 ]]
	do
		arr[((j++))]=$i
		a=$(($a/$i))
	done

done

echo ${arr[@]}
