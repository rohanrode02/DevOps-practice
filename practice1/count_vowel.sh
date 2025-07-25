#Write a function count_vowels(sentence) that takes a string and returns the number of vowels (a, e, i, o, u) in it. Ignore case.
#!/bin/bash

count_vowels()
{
	ch=$(echo "$1" | tr 'A-Z' 'a-z')
	if [ $ch = "a" ] || [ $ch = "e" ] || [ $ch = "i" ] || [ $ch = "o" ] || [ $ch = "u" ]; then
		echo "$1 is Vowel."
	else 
		echo "$1 is not Vowel."
	fi
}

read -p "Enter a charector : " sentence

count_vowels "$sentence"
