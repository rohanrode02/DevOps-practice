#Write a function named greet_user that takes a user's name as input and prints a greeting message.
#Example: "Hello, Rohan!"
#!/bin/bash

greet_user()
{
	echo "Hello, $1!"
}

read -p "Enter a Name : " name
greet_user "$name"
