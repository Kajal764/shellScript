#!/bin/bash -x
EMP_RATE_PER_HOUR=280
monthlywage=0
for(( i=0;i<20;i++ ))
do
randomPresent=$((RANDOM%3))
fullTime=2
partTime=1
absent=0
	case  $randomPresent in
	$fullTime)
		empWorkingHour=8
		dailySalary=$((EMP_RATE_PER_HOUR*empWorkingHour))
		echo $dailySalary

	;;
	$partTime)
		empWorkingHour=4
		dailySalary=$((EMP_RATE_PER_HOUR*empWorkingHour))
                echo $dailySalary
	;;
	$absent)
		empWorkingHour=0
                dailySalary=$((EMP_RATE_PER_HOUR*empWorkingHour))
                echo $dailySalary
	;;
esac
done
echo "monthlywage $sum"
monthlywage=$(( $monthlywage + $dailySalary ))


