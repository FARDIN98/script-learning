#! /bin/bash

: " When you are writing shell script you are dealing with the files and for example if you want to check whether file exists or not or if you want to check whether the file is a regular file or its block special file or its a character special file or many other option if you want to check you can use these file test operator to check those conditions "

# For printing input on the same line i use '\c'
# this '\c' is ised to keep the cursor on the same line after the end of the echo
# now in order to interpret this '\c' we need to use the flag '-e'
: " '-e' flag is used to know enable the interpretation of '\'. If you dont use '-e' its going to print this '\c' literally. If you use '-e' with this statement then its going to interpret this '\c' and then its going to keep the cursor on the same line as the echo command line "

echo -e "Enter the name of the file : \c"
read file_name

# we want to check whether the file exist or not. There is a special flag called '-e'
if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi
# output: Not found

# If its file or not we use a flag called '-f'

# If you want to check for the directories you can use the flag '-d'

: " There are two types of file basically
    1. Block special file
    2.character special file
    
    Character special file:  a character special file is a normal file which contains some text or data 
    
    Block special file:  a block special file is a binary file for example a picture file or a video file. Its a block special file. So a file which contains normal text or normal character its a character special file and other files for example video files or music files or or image files are block special files "

# for block special file you can use flag called '-b'
# for character special file you can use flag called '-c'
# There is a flag which checkes whether the file is empty or not so for that you just need use '-s'
