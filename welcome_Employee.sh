#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
wage=2
ratePerHour=20
randomCheck=$(( RANDOM%3 ))

case $randomCheck in
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


