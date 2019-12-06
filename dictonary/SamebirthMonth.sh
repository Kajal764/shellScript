#!/bin/bash -x

declare -A date
i=1
function getDay(){
	d=$((1+$((RANDOM%31))))
	echo $d
}

function getMonth(){
	m=$((1+$((RANDOM%12))))
        echo $m
}
function main(){
	for(( k=1;k<=50;k++ ))
	do
		day=$(getDay)
		month=$(getMonth)
		date[$k]="$day-$month-1992"
	done

d=1
for d in "${!date[@]}"
do
    echo "$d" "${date[$d]}"
done
echo "for month"
count12=0
for(( i=1;i<=50;i++ ))
do
	dd=${date[$i]}
	count=0
	value=$(echo $dd | awk -F- '{print $2}')
	for(( k=1;k<=50;k++ ))
	do
		mm=${date[$k]}
		value1=$(echo $mm | awk -F- '{print $2}')
		if [ $value -eq $value1 ]
		then
			echo  "${date[$k]}"
			count=$(($count+1))
		fi	  
  count12=$(($count12+1))
done

echo "same month date is $count" 
echo " "
echo " "
echo $count12
done
}
main
