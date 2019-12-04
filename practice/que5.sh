#!/bin/bash -x

EMP_RATE_PER_HOUR=280
monthlywage=0
hour=0

while [[ i -le 20 && $hour -le 50 ]] 
do
randomPresent=$((RANDOM%3))
fullTime=2
partTime=1
absent=0
empWorkingHour=0
	case  $randomPresent in
	$fullTime )
		empWorkingHour=8
	;;
	$partTime )
		empWorkingHour=4
	;;
	$absent )
		empWorkingHour=0
	;;
esac
hour=$(($hour+$empWorkingHour))
i=$(($i+1))
dailySalary=$(( $EMP_RATE_PER_HOUR * $empWorkingHour))
echo $dailySalary
monthlywage=$(( $monthlywage + $dailySalary ))

done


echo "hours is $hour"
echo "total salary is "
echo $monthlywage


