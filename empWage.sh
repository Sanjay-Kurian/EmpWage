#!/bin/bash -x
IsFullTime=2
IsPartTime=1
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalEmpHr=0
totalWorkingDays=0
function getWorkingHours()
{
	 case $1 in
      $IsFullTime)
         workHours=8
      ;;
      $IsPartTime)
         workHours=4
      ;;
      *)
         workHours=0
      ;;
   esac
	echo $workHours
}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR))
