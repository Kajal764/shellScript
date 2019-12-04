#/bin/bash -x

#print nth hormonic no

read -p "enter the no " no
sum=0
for(( i=1;i<=no;i++ ))
do
	temp=$(echo 1/$i | bc -l)
	sum=$($sum + $temp)

done
echo $sum

