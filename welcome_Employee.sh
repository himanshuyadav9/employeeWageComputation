#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
wage=2
ratePerHour=20
workingdays=20
maxhoursinmonth=100

totalempHr=0
totaldays=0

function getempHr(){
  case $empcheck in
         $isPartTime)
                   empHours=4
                   ;;
         $wage)
                   empHours=8
                   ;;
               *)
                  empHours=0
                  ;;
esac


}
while [[ $totalempHr -lt $maxhoursinmonth && $totaldays -lt $workingdays ]]
do
((totaldays++))
empcheck=$(( RANDOM%3))

empHours=$( getempHr $empcheck )
totalempHr=$(($totalempHr+$((empHours))))
done
totalSalary=$(($totalempHr*$workingdays ))





