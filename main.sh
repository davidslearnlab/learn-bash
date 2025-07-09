#!/bin/bash

# 0 to hero bash
# examples in the BASH scripting language ans their explanations

# Print text using the "echo" command
echo "Hello World" # <-- The string you want to print

# sleep/stop the program (mostly used for simulating delay)
sleep 3 # <-- how many seconds you want the program to sleep/stop

# Variables
num = 10 # <-- the value of a variable

# Read user input
read number # <-- the variable name

# Arguments
nm = $1 # <-- position of the argument (after filename)

# using command outputs
user = $(whoami) # <-- the command, that you want to get the output

# if/else/elseif statements
if [ $num -gt 10 ]; then
  echo "Number is greater than 10"
elif [ $num -eq 10 ]; then
  echo "Number is exactly 10"
else
  echo "Number is less than 10"
fi

# Nested if statements
if [ $num -gt 0 ]; then
  if [ $num -lt 10 ]; then
    echo "Number is between 1 and 9"
  fi
fi


