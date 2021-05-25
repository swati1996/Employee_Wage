#./bin/bash -x
WAGE_PER_HR=20
FULL_DAY_HR=8
PART_TIME_HR=4
random=$((RANDOM%3))
echo $random

if (( $random == 1 ))
then 
	echo "Employee present"
	emp_daily_wage=$(($WAGE_PER_HR*$FULL_DAY_HR))
	echo "Eployee daily wage: $emp_daily_wage"
elif (( $random == 2 ))
then
	echo "Employee is part time present"
	emp_daily_wage=$(($WAGE_PER_HR*$PART_TIME_HR))
	 echo "Eployee daily wage: $emp_daily_wage"
		

else
	echo "Employee absent"
fi	
