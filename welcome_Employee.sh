#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
wage=2
ratePerHour=20
randomCheck=$(( RANDOM%3 ))
if (( $wage==$randomCheck ))
then
        empHours=12
        echo "wage"
elif  (($isPartTime==$randomCheck ))
then
        empHours=8
        echo "partTime"
else
         empHours=0
         echo "Employee is Absent"
fi
      empWage=$(( $ratePerHour*$empHours ))
      echo "$empWage"

