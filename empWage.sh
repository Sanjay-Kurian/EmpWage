#!/bin/bash -x
empCheck=$((RANDOM%3))
fullTime=1
partTime=2
wagePerHour=20
case $empCheck in
	$fullTime)
		empHrs=8
	;;
	$partTime)
		empHrs=4
	;;
	*)
		empHrs=0
	;;
esac
salary=$(($empHrs*$wagePerHour))
echo $salary


