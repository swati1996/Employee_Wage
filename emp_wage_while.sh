#!/bin/bash -x
FULL_TIME=1
PART_TIME=2
WAGE_PER_HR=20
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS_MONTH=100
TOTAK_WORKING_HRS=10
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $TOTAL_WORKING_HRS_MONTH && $totalWorkingDays -lt $WORKING_DAY_PER_MONTH ]]
do
((totalWorkingDays++))
echo "$totalWorkingDays"
random=$((RANDOM%3))
case $random in 
	$FULL_TIME ) echo "Employee present"
	     emp_working_hr=8
	;;

	$PART_TIME ) echo "Employee is part time present"
		     emp_working_hr=4 
	;;

	*) echo "Employee absent"
	   emp_working_hr=0
	;;
esac
	totalEmpHr=$(($WAGE_PER_HR*$emp_working_hr))
            echo "Eployee daily wage: $totalEmpHr"

done
totalSalary=$(($totalEmpHr*$WORKING_DAY_PER_MONTH))
            echo "Employee monthly wage: $totalSalary "

