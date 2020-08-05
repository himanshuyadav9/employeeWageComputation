#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4
NUMBER_OF_HOUR=100
NUMBER_OF_DAYS=20

numberOfDays=20
totalWorkingDays=0
totalEmpHrs=0

function getWorkingHours()
{
	random=$1				
	case $random in
		1)
			empHrs=8										 
			;;

		2)
			empHrs=4										 
			;;

		3)
			empHrs=0
			;;
	esac
echo "$empHrs"
}

function calcDailyWage()
{
local workingHrs=$1
wage=$(($workingHrs*$PER_HOUR))
echo "$wage"
}

while(( $NUMBER_OF_HOUR > $totalEmpHrs  && $NUMBER_OF_DAYS > $totalWorkingDays ))
do
   totalWorkingDays=$((totalWorkingDays+1))
   empHrs="$( getWorkingHours $((RANDOM%3+1)) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))                     			
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $empHrs )"		
done
totalSalary=$(($totalEmpHrs*$numberOfDays))
echo "Total Salary is : ${empDailyWage[@]}"

