#./bin/bash -x
WAGE_PER_HR=20
FULL_DAY_HR=8

random=$((RANDOM%2))
echo $random

if (( $random == 1 ))
then 
	echo "Employee present"
	emp_daily_wage=$(($WAGE_PER_HR*$FULL_DAY_HR))
	echo "Eployee daily wage: $emp_daily_wage"
else
	echo "Employee absent"
fi	
