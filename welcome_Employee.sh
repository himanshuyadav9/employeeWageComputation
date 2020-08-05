#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
wage=2
ratePerHour=20

totaldays=20
for (( day=1; day<=$totaldays; day++))
do
empcheck=$(( RANDOM%3))
case $empcheck in
         $isPartTime)
                   empHours=8
                    echo "isPartTime"
                   ;;
         $wage)
                   empHours=12
                   echo "wage"
                   ;;
               *0)
                  empHours=0
                  echo "employee is absent"
                   ;;
esac
empWage=$(($ratePerHour*$empHours))
totalSalary=$(($totalSalary + $empWage ))
done



