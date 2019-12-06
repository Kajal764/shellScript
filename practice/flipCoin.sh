#!/bin/bash -x

#extend the flip coin problem till either heads or tails wins 11 times
head=0
tail=0
echo " 1 for tail and 0 for head"

while [[ $head -lt 11 && $tail -lt 11 ]]
do
	coin=$((RANDOM%2))
	if [[ $coin -eq 1 ]] 
	then
		tail=$(($tail+1))
	else
		head=$(($head+1))
	fi
done

if [[ $head -eq 11 ]]
then
	echo "head win"
else
	echo "tail win"
fi
