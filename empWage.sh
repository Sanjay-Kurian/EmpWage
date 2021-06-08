#!/bin/bash -x
fullTime=1
partTime=2
wagePerHour=20
totalSalary=0
numWorkingDays=20
for((day=1;day<=$numWorkingDays;day++))
do
	empCheck=$((RANDOM%3))
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
done
salary=$(($empHrs*$wagePerHour))
totalSalary=$(($totalSalary+$salary))


