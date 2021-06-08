#!/bin/bash -x
IsFullTime=2
IsPartTime=1
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
		$IsFullTime)
			empHrs=8
		;;
		$IsPartTime)
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
