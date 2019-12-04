#!/bin/bash -x

echo "enter a no"
read no
count=0
for (( i=2;i<no;i++ )) 
do
	if [[ `expr $no % $i` -eq 0 ]]
	then
		count=$(( $count + 1 ))
		
	fi
done

if [[ $count -eq 0 ]]
	then
	echo "this is prime no"
else
	echo "this no is not prime no"
fi

