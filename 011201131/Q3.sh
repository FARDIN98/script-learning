#!/bin/bash

# Function to calculate Fibonacci series
function fib() {
	# Check if the argument is missing or empty
	: "-z checks if the string is empty, then the operator returns true, and if the string is not empty, then the operator returns false. "
    if [ -z "$1" ]; then
        echo "Error: argument missing"
        return 1
    fi

	# Initialize variables
    fir=0 # first term
    sec=1 # second term
    curr=0 # current term

    echo -n "The Series: 0 1" # Print the first two terms

    if [ $1 -eq 0 ]; then # Check if n is 0
        return 0
    elif [ $1 -eq 1 ]; then # Check if n is 1
        return 1
    else
        # Calculate and print the rest of the terms
        # A for loop to generate the Fibonacci sequence
		# Starting from 2 since the first two values are pre-defined
		# Loop until the given argument $1
		for (( i=2; i<$1; i++ )); do
			# Calculate the next value by adding the previous two values
			curr=`expr $fir + $sec`
			# Print the current value on the same line
			echo -n " $curr"
			# Update the first and second values for the next iteration
			fir=$sec
			sec=$curr
		done
		# Move the cursor to a new line
		echo ""
		# Return the last computed value
		return $curr
    fi
}

# Main function
function main() {
    n=$1
    fib $n # Call the fib function
    echo "$1th fibonacci: $?" # Print the result
}

main $1 # Call the main function with command line argument
