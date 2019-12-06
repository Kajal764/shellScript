#!/bin/bash -x

declare -A dice
declare -A count
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

j=0
i=0
function getRandom(){
value=$((1+RANDOM%6))
echo $value
}

function main(){
	while [[ $count1 -ne 10 && $count2 -ne 10 && $count3 -ne 10 && $count4 -ne 10 && $count5 -ne 10 && $count6 -ne 10 ]]
	do
	no=$(getRandom)
	case $no in
		1)
		count["1"]=$(($count1+1))
		count1=$(($count1+1))
		;;
		2)
	        count["2"]=$(($count2+1))
		count2=$(($count2+1))
 		;;
		3)
        	count["3"]=$(($count3+1)) 
		count3=$(($count3+1))
		;;
		4)
        	count["4"]=$(($count4+1))
		count4=$(($count4+1))
   		;;
		5)
        	count["5"]=$(($count5+1))   
		count5=$(($count5+1))
		;;
		6)
        	count["6"]=$(($count6+1))
		count6=$(($count6+1))
		;;
esac

	dice[ "no $j" ]=$no
	done


for i in "${!count[@]}"
do
    echo "$i" "${count[$i]}"
done

k=1
max="${count[$k]}"
min="${count[$k]}"

high=1
low=1
for(( k=1;k<=6;k++ ))
do
	if [[ "${count[$k]}" -lt  $min ]]
	then
		min="${count[$k]}"
		low=$k
	fi

	if [[ "${count[$k]}" -gt $max ]]
	then	
		max="${count[$k]}"
		high=$k
	fi

done

echo "$high occur $max times which is maximum"
echo "$low occur $min times which is minimum"
}
main









