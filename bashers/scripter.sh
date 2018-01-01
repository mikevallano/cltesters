#!/bin/bash

# the line above is necessary to identify the file as a bash script and is not a comment

# after creating a file, you have to make it executable. chmod +x filename.sh

# a file extension is not needed. using .sh is a convention to identify scripts

# to call the script, you can use source or . followed by the path/to/filename.sh

# Arguments Reference

# $0 is the filename of the script
# $# is the number of arguments the script was run with
# $1..#n the argments the script was run with

echo "the first three arguments were ${1} ${2}, and ${3}"

echo "hello world"

mah_var='tacos' #variables need to be assigned with no space between the variable and the =

mah_num=3

mah_arg=$1 #arguments are captured in order like $1 $2 and so on.

arg_count=$#

echo "mah variable is: $mah_var" #call variables with the dollar sign

# concatenate directly inside the quotes
echo "the argument passed was: $mah_arg"


# if statements
# comparison operators: http://tldp.org/LDP/abs/html/comparison-ops.html

if [ $arg_count -le 2 ]
    then echo 'called w/ 2 or fewer args'
  elif [ $arg_count -eq 3 ]
    then echo 'called w/ 3 args'
  else echo 'calle w/ more than 3 args'
fi

#check if a file exists
if [ -f testfile.txt ] #looks in current directory. does not seem to require full file path
  then echo 'it exists'
  else echo 'it does not exist'
fi

#check if a folder exists
if [ -d ~/dev/learning-practice/cltester/bashers/subfoldertester ] #seems to require full file path
  then echo 'it exists'
  else echo 'it does not exist'
fi


