#!/bin/bash

#use predefine variable to access passed arguments
#echo arguments to the shell
echo $1 $2 $3 ' -> echo $1 $2 $3'

# we can also store arguments from bash command line in special array
args=("$@")
# echo argument to the shell
echo ${args[0]} ${args[1]} ${args[2]} ' -> args("$@"); echo ${args[0]} ${args[1]} ${args[2]}'

#use $@ to print out all argument at once
echo $@ ' -> echo $@'

#use $# variable to print out 
#number of argument passed to the bash script
echo Number of arguments passed: $# ' -> echo number of arguments passed: $#'

