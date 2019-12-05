#!/bin/bash -x

declare -a arr
function getRandomValue(){
	value=$((RANDOM%1000))
	echo $value
}

for (( i=1;i<=10;i++ ))
do
	value=$(getRandomValue)
	if [[ value -gt 100 ]]
	then
		arr[$i]=$value
	else
		i=$(($i-1))
	fi
done

echo ${arr[@]}

echo "sort array is"
for(( i=0;i<10;i++ ))
do
	for(( j=$i;j<10;j++ ))
	do
		 if [[ "${arr[$i]}" -gt "${arr[$j]}" ]] 
 		 then
           		 # swap 
           		 temp="${arr[$i]}" 
           		 arr[$i]="${arr[$j]}"   
           		 arr[$j]=$temp 
       		 fi
	done
done

echo ${arr[@]}


