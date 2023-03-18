#! /bin/bash

# The first arguement which we pass in an array will be stored in '$1' 2nd will be '$2'
echo $1 $2 $3 ' > echo $1 $2 $3'
# Output: Mark Tom John > echo $1 $2 $3

# When you use '$0' you can see the script name also
echo $0 $1 $2 $3 ' > echo $0 $1 $2 $3'
# Output: ./3_pass_arguement.sh Fardin Shakin Ria > echo $0 $1 $2 $3

# arguement as an array
args=("$@")

echo ${args[1]} ${args[2]} ${args[3]}

# number of arguements which are passed

echo $@
# number of arguements which are passed
echo $#