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

largest="${arr[1]}"
secondLargest="${arr[1]}"

for(( i=1;i<=10;i++ ))
do

	if [[ "${arr[$i]}" -gt $largest ]]
	then
		secondLargest=$largest
		largest="${arr[$i]}"
	else
		if [[ "${arr[$i]}" -gt $secondLargest && "${arr[$i]}" -lt $largest ]]
		then
		secondLargest="${arr[$i]}"
		fi
	fi
done

echo "largest value is $largest"
echo "secondLargest value is $secondLargest"

smallest="${arr[1]}"
secondSmallest="${arr[1]}"

for(( i=1;i<=10;i++ ))
do

        if [[ "${arr[$i]}" -lt $smallest ]]
        then
                secondSmallest=$smallest
                smallest="${arr[$i]}"
        else
                if [[ "${arr[$i]}" -lt $secondSmallest && "${arr[$i]}" -gt $smallest ]]
                then
                secondSmallest="${arr[$i]}"
                fi
        fi
done

echo " smallest value is  $smallest"
echo "second smallest value is $secondSmallest"


