#!/bin/bash
# This is the shebang. It tells the system to use /bin/bash to interpret the script.

##########################################################
# VARIABLES
##########################################################
# Variables are declared without a $ sign. Use $ to access them.

name="your_name"
age=18 # Add your age
echo "My name is $name and I am $age years old."

# Curly braces are useful when combining with strings
echo "Uppercase version of name: ${name^^}"  # Converts to uppercase
echo

##########################################################
# ARITHMETIC OPERATIONS
##########################################################
# Use $(( expression )) for integer arithmetic

a=5
b=3
sum=$((a + b))
echo "$a + $b = $sum"
echo

##########################################################
# CONDITIONAL STATEMENTS
##########################################################

# IF-ELSE
if [ $a -gt $b ]; then
  echo "$a is greater than $b"
else
  echo "$a is not greater than $b"
fi
echo

# CASE statement
read -p "Enter a letter (a/b/c): " letter
case $letter in
  a) echo "You chose A" ;;
  b) echo "You chose B" ;;
  c) echo "You chose C" ;;
  *) echo "Invalid choice" ;;
esac
echo

##########################################################
# LOOPS
##########################################################

# FOR loop
echo "Counting from 1 to 5:"
for i in {1..5}; do
  echo "$i"
done
echo

# WHILE loop
echo "Countdown from 3:"
count=3
while [ $count -gt 0 ]; do
  echo "$count"
  count=$((count - 1))
done
echo

##########################################################
# FUNCTIONS
##########################################################

# Defining a function
say_hello() {
  echo "Hello, $1!"
}

# Calling the function with arguments
say_hello "World"
say_hello "your_name"
echo

##########################################################
# FILE TESTING
##########################################################

file="test.txt"
touch $file  # Create an empty file

if [ -f "$file" ]; then
  echo "$file exists and is a regular file."
fi

rm $file  # Clean up
echo

##########################################################
# COMMAND SUBSTITUTION
##########################################################
# Use $(...) to capture the output of a command into a variable

current_date=$(date)
echo "Current date and time: $current_date"
echo

##########################################################
# USER INPUT
##########################################################

read -p "What is your favorite language? " lang
echo "You like $lang."
echo

##########################################################
# EXIT STATUS AND ERROR HANDLING
##########################################################

mkdir some_dir
if [ $? -eq 0 ]; then
  echo "Directory created successfully."
else
  echo "Failed to create directory."
fi

rmdir some_dir
echo

##########################################################
# SPECIAL VARIABLES
##########################################################
# $0 - name of the script
# $1 to $9 - positional parameters
# $# - number of arguments
# $@ - all arguments
# $? - exit status of the last command

echo "Script name: $0"
echo "Argument count: $#"
echo "All arguments: $@"
echo

##########################################################
# EXIT
##########################################################

exit 0
