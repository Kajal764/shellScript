#!bin/bash -x
echo "enter two no"
read a
read b

function getPalindromeno(){
	no=$1
	rev=0
	rem=0
	while [[ $no -ne 0 ]]
	do
		rem=$(( $no % 10 ))
		rev=$(($(($rev * 10)) + $rem ))
		no=$(( $no / 10 ))
	done
	echo  $rev
	}

x=$(getPalindromeno $a)
y=$(getPalindromeno $b)

if [[ $y == $x ]]
then
	echo "number is palindrome no"
else
	echo "number is not palindrome no"
fi


