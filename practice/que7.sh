#!/bin/bash -x

echo "think a no within range of 1 to 100"
low=0
high=100
mid=$(((( $low+$high )) / 2))
input=0
	echo "enter 0 if no is less"
        echo  "enter 2 if no is greater"
        echo "enter 1 if no is mathed"

while [[ $low -lt $high  && $input -ne 1 ]]
do

	read -p "is this your no $mid    "   input
	if [[ $input -eq 0 ]]
	then
		high=$mid
		mid=$(((( $low+$high )) / 2))
	elif [[ $input -eq 2 ]]
	then
		low=$mid
		mid=$(((( $low+$high )) / 2))
	elif [[ $input -eq 1 ]]
	then
		echo "this is your no $mid"
	fi
			
done
