#./bin/bash -x
WAGE_PER_HR=20
FULL_DAY_HR=8
PART_TIME_HR=4
WORKING_DAY_PER_MONTH=20
random=$((RANDOM%3))

case $random in 
	1 ) echo "Employee present"
	    emp_daily_wage=$(($WAGE_PER_HR*$FULL_DAY_HR))
	    echo "Eployee daily wage: $emp_daily_wage"
	    emp_monthly_wage=$(($emp_daily_wage*$WORKING_DAY_PER_MONTH))
	    echo "Employee monthly wage: $emp_monthly_wage "
	;;

	2 ) echo "Employee is part time present"
           emp_daily_wage=$(($WAGE_PER_HR*$PART_TIME_HR))
	   emp_monthly_wage=$(($emp_daily_wage*$WORKING_DAY_PER_MONTH)) 
	   echo "Eployee daily wage: $emp_daily_wage"
	  echo "Employee monthly wage: $emp_monthly_wage "  
	;;
	
	*) echo "Employee absent"
esac
