#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
wage=2
ratePerHour=20
workingdays=20
maxhours=100

totalempHr=0
totaldays=0
while [[ $totalempHr -le $maxhours || $totaldays -le $workingdays ]]
do
((totaldays++))
empcheck=$(( RANDOM%3))
case $empcheck in
         $isPartTime)
                   empHours=8
                   ;;
         $wage)
                   empHours=12
                   ;;
               *)
                  empHours=0
                   ;;
esac

totalempHr=$(($totalempHr+$empHours))
totalSalary=$(($totalempHr*$ratePerHour ))
done




