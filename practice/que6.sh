#!/bin/bash -x

echo "enter a no"
read no
count=0
i=2
while  [[ $i -lt $no ]] 
do
        if [[ $(( $no % $i)) -eq 0 ]]
        then
                count=$(( $count + 1 ))

        fi
	i=($i+1)
done

if [[ $count -eq 0 ]]
then
        echo "this is prime no"
else
        echo "this no is not prime no"
fi



