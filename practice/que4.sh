#!/bin/bash -x

#extend program to take a range of number as input and output the prime numbers in that range

echo "enter the range no you want to enter"
read no

for(( i=0;i<no;i++ ))
do
	echo "enter a no"
	read a
	prime $a
	if [[ prime $a ]]
	then
		echo " prime no"
	else
		echo "not a prime no"
	fi
done

function prime()
{
count=0
for (( i=2;i<$1;i++ )) 
do
        if [[ `expr $1 % $i` -eq 0 ]]
        then
                count=$(( $count + 1 ))

        fi
done

if [[ $count -eq 0 ]]
        then
        return "true"
else
        echo "false"
fi
}

