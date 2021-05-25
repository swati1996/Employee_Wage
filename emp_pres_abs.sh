#./bin/bash -x

random=$((RANDOM%2))
echo $random

if (( $random == 1 ))
then 
	echo "Employee present"
else
	echo "Employee absent"
fi	
