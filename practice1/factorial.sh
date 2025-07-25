#Define a function factorial(n) that returns the factorial of a non-negative integer n using a loop (not recursion).

#!/bin/bash
factorial()
{
	fact=1
	if [ "$1" -lt 0 ]; then
		echo "Negative number is not allow"
	else
		for (( i=1; i<=$1; i++ ))
		do
			fact=$(($fact*i))
		done

		echo "factorial of $1 : $fact"
	fi
}

read -p "Enter a Number :" n
factorial "$n"

