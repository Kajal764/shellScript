#!/bin/bash -x

declare -a arr
j=0

function getResult(){
no=$1
temp=$no
rem=0
rev=0
while [[ $no -ne 0 ]]
do
	rem=$(($no%10))
	rev=$(($(($rev*10))+$rem))
	no=$(($no/10))
done
if [[ $temp -eq  $rev ]]
then
	echo 1
else
	echo 0
fi
}

for(( i=10;i<100;i++ ))
do
        result=$(getResult $i)
        if [[ $result -eq 1 ]]
        then
                arr[((j++))]=$i
        fi
done

echo ${arr[@]}
