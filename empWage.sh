#!/bin/bash -x
IsFullTime=2
IsPartTime=1
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalWorkHours=0
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
function calcDailyWages()
{
	workHrs=$1
	wage=$(($workHrs*$EMP_RATE_PER_HR))
	echo $wage
}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
	empDailyWage[$totalWorkingDays]="$( calcDailyWages $workHours )"
done
totalSalary="$( calcDailyWages $totalWorkHours )"
echo "Daily Wage " ${empDailyWage[@]}
echo "All keys " ${!empDailyWage[@]}
