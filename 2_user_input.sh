#! /bin/bash

: "
    To get input from user we use read command. The read command takes input from the keyboard and assigns it to a variable
"

# echo "Enter name: "
# whatever variable name i write after this read command your input will be saved in this variable
# read name
# echo "Entered name: $name"
# Output: Entered name: Fardin

# We can use multiple variable after read command
# echo "Enter name: "
# read name1 name2 name3
# echo "Names: $name1, $name2, $name3"


# To take input in same line we use '-p' which allows us to take input on same line
# read -p 'Username: ' user_var

: " Now sometimes you also want to make this input silent. Silent means for example you want to allow the user to enter his password and the password you cant show for example. So you dont want to show what the user is typing then we can use a flag called '-sp'."

# read -sp 'password: ' pass_var
# echo
# echo "Username: $user_var"
# echo "Password: $pass_var"

: "For example you want to allow the user to enter multiple inputs and you want to save those input inside an array.So we can do that also and for that we use a flag called '-a' "

echo "Enter names: "
read  -a names
echo "Names: ${names[0]}, ${names[1]}"
