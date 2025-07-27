#Write a function count_vowels(sentence) that takes a string and returns the number of vowels (a, e, i, o, u) in it. Ignore case.
#!/bin/bash

count_vowels()
{
	ch=$(echo "$1" | tr 'A-Z' 'a-z')
	count=0
	
	for (( i=0; i<${#ch}; i++ ))
	do
		c=${ch:$i:1}
		if [ $c = "a" ] || [ $c = "e" ] || [ $c = "i" ] || [ $c = "o" ] || [ $c = "u" ]; then
			count=$((count + 1))
		fi
	done

	echo "Total vowels : $count"
}

read -p "Enter a charector : " sentence

count_vowels "$sentence"
