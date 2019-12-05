#!/bin/bash -x

declare -A salary

function main(){ 
EMP_RATE_PER_HOUR=300
monthlywage=0
i=0
j=1
for(( i=0;i<20;i++ ))
do
randomPresent=$((RANDOM%3))
fullTime=2
partTime=1
absent=0
	case  $randomPresent in
	$fullTime)
		empWorkingHour=8
		dailySalary=$(($EMP_RATE_PER_HOUR*$empWorkingHour))

	;;
	$partTime)
		empWorkingHour=4
		dailySalary=$(($EMP_RATE_PER_HOUR*$empWorkingHour))

	;;
	$absent)
		empWorkingHour=0
                dailySalary=$(($EMP_RATE_PER_HOUR*$empWorkingHour))

	;;
esac
salary["day $j"]=$dailySalary
j=$(($j+1))

done
}
main

echo "dailySalaryIs"

i=0
for i in "${!salary[@]}"
do
    echo "$i" "${salary[$i]}"
done
