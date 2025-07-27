#Write a function print_primes_in_range(start, end) that prints all prime numbers between the given start and end range.
#!/bin/bash
print_primes_in_range(){
	
	if [ "$1" -gt "$2" ]; then
		echo "Wrong input"
	else
		for (( i=$1; i<$2; i++ )); do
			if [ $i -eq 1 ] || [ $i -eq 0 ]; then
				continue
			else
				count=0;
				for (( j=2; j<i; j++ )); do
					rem=$(( i%j ))
					if [ $rem -eq 0 ]; then
						count=$(( count+1 ))
					fi
				done
				if [ $count -eq 0 ]; then
					echo "$i"
				fi
			fi
		done
	fi

}

read -p "Start number : " start
read -p "End number : " end

print_primes_in_range "$start" "$end"
