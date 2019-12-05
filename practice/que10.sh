#!/bin/bash -x
EMP_RATE_PER_HOUR=280
monthlywage=0
hour=0

h=0

function getWorkingHours()
{
	random=$1
	fullTime=2
	partTime=1
	absent=0

	case $random in
		$fullTime)
			empWorkingHour=8
			hour=$(($hour + $empWorkingHour))
		;;
		$partTime)
			empWorkingHour=4
			hour=$(($hour + $empWorkingHour))
		;;
		$absent)
			empWorkingHour=0
			hour=$(($hour + $empWorkingHour))
		;;
	esac

	echo $hour
}

value=0
for((i=0;i<20;i++))
do
	randomPresent=$((RANDOM%3))

	h=$(getWorkingHours $randomPresent)
   value=$(($value+$h))

done

echo "total working hours is  $value"
