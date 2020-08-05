#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1
randomCheck=$(( RANDOM%2 ))

if (( $isPresent==$randomCheck ))
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi
