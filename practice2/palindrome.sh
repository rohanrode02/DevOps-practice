#Write a function is_palindrome() that takes a string and checks whether it is a palindrome (same forward and backward). Ignore case and spaces.
#!/bin/bash

is_palindrome()
{
	s=$(echo "$1" | tr 'A-Z' 'a-z' | tr -d ' ')
	store=$( echo "$s" | rev )
	
	if [ $store = $s ]; then
		echo "'$1' is palindrome"
	else
		echo "'$1' is not palindrome"
	fi

}

read -p "Enter a String : " string

is_palindrome "$string"
