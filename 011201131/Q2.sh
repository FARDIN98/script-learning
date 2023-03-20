#!/bin/bash

# Defining a function named "main"
function main () {
    # Storing the path of the "Documents" folder in the "doc" variable
    doc=~/Documents
    
    # Storing an empty string in the "empty" variable
    empty=""
    
    # Using the "find" command to search for the file with the name specified by the first argument,
    # and storing the result in the "result" variable
	# the find command is used to search for files in the root directory (/).
	# The -type f option specifies that only regular files should be returned 
	# The -name option is used to specify a pattern to match against the file name, which is passed as the first argument $1.
    result=`find / -type f -name $1`
    
    # Checking if the "result" variable is empty
    if [ $result -eq $empty ] ; then
        # If it is, then assigning the path of the "Documents" folder and the file name specified by the first argument
        # to the "result" variable, and writing the string "dummy file" to that file
        result="$doc/$1"
        echo "dummy file" > "$result"
    fi
    
    # Printing the value of the "result" variable
    echo $result
}

# Calling the "main" function and passing the first argument to it
main $1

