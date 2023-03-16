#! /bin/bash
# This is a comment
echo "Hello World" #This is also comment

# For multiline comment
: '
    echo "Hello world"
'

# In shell there are 2 types of variables. 1.System Variable 2.User defined variable


# System variable

echo $BASH
# Output: /bin/bash 
# It shows bash name
echo $BASH_VERSION
# Output: 5.1.16(1)-release
# It shows bash version
echo $HOME
# Output: /home/fardinzzz
# It shows home directory
echo $PWD
# Output: /home/fardinzzz/shell_script/script_learning
# It shows present working directory


# User Defined Variabled
name=Mark
echo This is $name
# Output: This is Mark