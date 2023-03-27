#!/bin/bash

# This script calculates the sum of a series of numbers based on user input
# The function sum_of_series() is defined to calculate the sum
function sum_of_series(){
    # Initialize sum to zero
    sum=0
    # i is set to the value of the first argument passed to the sum_of_series function
    for (( i=1; i<=$1;i++ ))
    do
    # Perform the operation using expr
    sum=expr $sum + $i
    done
    # Return the sum
    return $sum
}

# The function main() is defined to take user input and call the sum_of_series function
function main() {
    # This loop runs indefinitely until the user enters a valid input
    for (( ; ; ))
    do
	# Take input from user
	read input
	# If the input is a number and is greater than or equal to 0, then perform the following operations
	if [ $input -ge 0 ] ; then
		# Call the sum_of_series function and print the result
		sum_of_series $input
		echo "The sum is: $?"
		# Break out of the loop
		break
	else
		# If the input is not a number, print an error message
		echo "Invalid Input! Please Try Again!"
	fi
    done
}

# Call the main function to start the script
main
