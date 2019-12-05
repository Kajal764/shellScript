#!/bin/bash -x

echo "enter a no "
read a

function prime(){
	no=$1
	count=0
	temp=$no/2
	for (( i=2;i<=$temp;i++ ))
	do
		if [[ $(($no%$i)) -eq 0 ]]
		then
			count=$(( $count + 1 ))
		fi
	done 
	if [ $count -eq 0 ]
	then
		echo "true"
	else
		echo "false"
	fi
}

value1=$(prime $a)
echo $value1


function getPalindrome(){
	num=$1
	rev=0
	rem=0
	while [[ $num -ne 0 ]]
	do
		rem=$(( $num%10 ))
		rev=$(( $(($rev*10)) + $rem ))
		num=$(( $num/10 ))  
	done
	echo $rev
}

value2=$(getPalindrome $a)
echo $value2

value3=$(prime $value2)
echo  $value3

if  [[ $value1 -eq true && $value3 -eq true ]]
then
	echo "num is prime and its palindrome is also prime"
elif [[ $value1 -eq true && $value3 -eq false ]]
then
	echo "num is prime but palindrome num is not prime"
elif [[ $value1 -eq false && $value3 -eq true ]] 
then
	echo "num is not prime but its palindrome is prime"
else
	echo "num is not prime and its palindrom is also not prime "
fi 



