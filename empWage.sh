#!/bin/bash -x
empCheck=$((RANDOM%3))
fullTime=1
partTime=2
wagePerHour=20
if [ $empCheck -eq $fullTime ]
then
	empHours=8
	daily=$(($wagePerHour*$empHours))
	echo "The daily wage of employee is" $daily
elif [ $empCheck -eq $partTime ]
then
	empHours=8
	daily=$(($wagePerHour*$empHours))
	echo "The part time wage of employee is" $daily
else
	daily=0
	echo "No daily wage"
fi

