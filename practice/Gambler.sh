#!/bin/bash -x

#gambler program

cash=100
goal=200
win=0
lose=0
while [[ $cash -gt 0 && $cash -lt $goal ]]
do
	r=$((RANDOM%2))
	if [[ $r -eq 0 ]]
	then
		cash=$(($cash-1))
		lose=$(($lose+1))
	else
		cash=$(($cash+1))
		win=$(($win+1))
	fi
done

echo "wins  $win"
echo "lose  $lose"


