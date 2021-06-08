#!/bin/bash -x
empCheck=$((RANDOM%2))
isPresent=1
wagePerHour=20
fullDayHour=8
if [ $empCheck -eq $isPresent ]
then
	echo Employee is present
	daily=$(($wagePerHour*$fullDayHour))
	echo "The daily wage of employee is" $daily
else
	echo Employee is absent
	daily=0
	echo "No daily wage"
fi

