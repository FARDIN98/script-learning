#!/bin/bash

db="db.txt"      # name of the database file
last=$#          # number of arguments passed to the script

name=""          # variable to store name
cmd=$1           # command (first argument)
number=$($last)  # last argument (supposed to be a number)

if [ $cmd -eq "add" ]; then  # if the command is "add"
  for (( i=2; i <= "$#"; i++ )); do
    if [ ${i} -neq $last ]  # if it's not the last argument
      name += "${!i}"       # add the argument to the name
  done
  name += "${number}"       # add the last argument to the name
  echo $name >> $db         # write the name to the database file
elif [ $cmd -eq "list" ]; then  # if the command is "list"
  cat $db | while read line do  # read each line in the database
    echo $line                # print the line to the console
  done
elif [ $cmd -eq "remove" ]; then  # if the command is "remove"
  for (( i=2; i <= "$#"; i++ )); do
    if [ ${i} -neq $last ]     # if it's not the last argument
      name += "${!i}"          # add the argument to the name
  done
 # $db is a variable containing the path to the database file
 # | is used to pipe the contents of the file to the while loop
 # read line reads each line of the file
 cat $db | while read line
 do
      # if statement checks if the line does not contain the name
      # *"$name"* is a wildcard pattern that matches any characters before and after the name
      # -neq is used to check for inequality
      if [[ $line -neq *"$name"* ]]; then
          # If the line does not contain the name, continue to the next line
          continue
      fi
      # If the line contains the name, print it
      echo $line
  done
