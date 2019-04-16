#!/bin/bash

#define bash global variable
#this variable is global and can be used anywhere in this bash script
VAR="global variable"
function bash {
   #define bash local variable
   #this variable is local to bash function only
   local VAR="local variable"
   echo $VAR
}

echo $VAR 

bash

#note the bash global variable did not change 
#"local" is bash reserved word
echo $VAR
