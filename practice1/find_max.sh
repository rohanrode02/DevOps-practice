#Create a function called find_max that takes three numbers as arguments and returns the largest one.
#!/bin/bash

find_max()
{
	if [ $1 -ge $2 ] && [ $1 -ge $3 ]; then
		return "$1"
	elif [ $2 -ge $1 ] && [ $2 -ge $3 ]; then
		return "$2"
	else
		return "$3"
	fi
}

read -p "Enter 1st Number : " no1
read -p "Enter 2nd Number : " no2
read -p "Enter 3rd Number : " no3

find_max "$no1" "$no2" "$no3"

echo "$? Is Largest Number"
