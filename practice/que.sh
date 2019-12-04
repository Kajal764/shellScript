#!/bin/bash -x

read -p "enter the value" n
power=1
for(( i=1;i<=n;i++ ))
do
	power=` expr  $power \* 2 `
	echo "2 of power $i is= $power"
done
