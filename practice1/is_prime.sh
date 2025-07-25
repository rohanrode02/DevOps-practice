#Write a function is_prime that takes an integer and returns True if it's a prime number, otherwise False.
#!/bin/bash

is_prime()
{
   count=0

   if [ $1 -eq 1 ] || [ $1 -eq 0 ]; then
	   echo 0
   else
	   for (( i=1; i<$1; i++ )); do
		   rem=$(( $1%i ))

		   if [ $rem -eq 0 ]; then
			   count=$(( $count+1 ))
		   fi
	    done

   	    if [ $count -ge 2 ]; then
		    return 0 
	    else
		    return 1
	    fi
    fi
	
			   
}

read -p "Enter a Number : " no

is_prime "$no"

if [ $? -eq 1 ]; then
	echo "$no is prime"
else
	echo "$no is not prime"
fi


