#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1
ratePerHour=20
randomCheck=$(( RANDOM%2 ))
empWage=0
if (( $isPresent==$randomCheck ))
then
        empHours=8
        empWage=$(($ratePerHour*$empHours))
        echo "$empWage"
else
      empHours=0
      empWage=$(($ratePerHour*$empHours))
      echo "$empWage"
fi

