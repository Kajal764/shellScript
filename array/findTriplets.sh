#!/bin/bash -x

arr=(1 -1 2 -2 3 4 -3)
echo ${arr[@]}

length="${#arr[@]}"
echo "array no with sum is equal to 0"
for(( i=0;i<$(($length-2));i++ ))
do
	for(( j=$(($i+1));j<$(($length-1));j++ ))
	do
		for(( k=$(($j+1));k<$length;k++ ))
		do
			if [[ $(("${arr[$i]}"+"${arr[$j]}"+"${arr[$k]}")) -eq 0 ]]
			then
				echo ${arr[i]} ${arr[j]} ${arr[k]}
			fi
		done
	done
done
