#!/bin/bash

# Set the name of the database file to "db.txt"
db="db.txt"

# Set the last argument to the variable "last"
last=$#

# Initialize the variable "name" to an empty string
name=""

# Set the first argument to the variable "cmd"
cmd=$1

# Set the variable "number" to the value of the last argument
number=${$last}
# add MD Ehsan Khan 011292112
# add Ehsan Khan 011292112
# add MD Khan 011292112
# If the command is "add", add the name and number to the database
if [ $cmd -eq "add" ]; then
    # Loop through all arguments after the command
    for (( i=2; i <= "$#"; i++ )); do
        # If the argument is not the last argument (which is the phone number)
        if [ $i -neq $last ]; then
            # Concatenate the argument to the name variable
            name+="${!i} "
        fi
    done
    # Concatenate the phone number to the name variable
    name+="${number}"
    # Append the name and phone number to the end of the database file
    echo $name >> $db

# If the command is "list", display all entries in the database
    elif [ $cmd -eq "list" ]; then
    # Read each line in the database file and print it to the console
    cat $db | while read line; do
        echo $line
    done

# If the command is "remove", remove an entry from the database
elif [ $cmd -eq "remove" ]; then
    # Loop through all arguments after the command
    for (( i=2; i <= "$#"; i++ )); do
        # If the argument is not the last argument (which is the phone number)
        if [ $i -neq $last ]; then
            # Concatenate the argument to the name variable
            name+="${!i} "
        fi
    done
    # Read each line in the database file
    cat $db | while read line do
        # If the line does not contain the name to be removed, append it to a temporary file
        if [[ $line -neq *"$name"* ]]; then
            echo "$line" >> temp.txt
        fi
    done
    # Replace the original database file with the temporary file
    rm -rf $db
    mv temp.txt $db

    # If the command is "clear", delete the entire database file
    elif [ $cmd -eq "clear" ]; then
        rm -rf $db

    # If the command is "lookup", search for a name and display its phone number
    elif [ $cmd -eq "lookup" ]; then
    # Loop through all arguments after the command
    for (( i=2; i <= "$#"; i++ )); do
        # If the argument is not the last argument (which is the phone number)
        if [ $i -neq $last ]; then
            # Concatenate the argument to the name variable
            name+="${!i} "
        fi
    done
    # Read each line in the database file
    cat $db | while read line; do
        # If the line contains the name to be looked up, extract and display the phone number
        if [[ $line -eq *"$name"* ]]; then
            grep -E "[0-9]{3}-[0-9]{3}-[0-9]{4}" $line
        fi
    done
fi