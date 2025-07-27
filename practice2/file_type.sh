#Write a function count_file_types() that takes a directory path as input and counts how many files of each type exist (e.g., .txt, .sh, .jpg, etc.)
#!/bin/bash

count_file_types()
{

    if [ ! -d "$1" ]; then
	    echo "Directory does not exist: $1"
    else
	    count=$( find "$1" -type f | sed -n 's/.*\.//p' | sort | uniq -c  )
	    echo "$count"

    fi
}

read -p "Input Directory path : " Directory
count_file_types "$Directory"
