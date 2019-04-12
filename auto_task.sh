#!/bin/bash

#sample script to automate task:

#update local file database:

echo -e "\e[4;32m UPDATE LOCAL FILE DATABASE\e[0m"
updatedb
if [ $? == 0 ]; then
	echo "The local file database was updateed correctly."
else
	echo "The local file database was not updated correctly."
fi

echo ""

#find and / or delete file with 777 permission.

echo -e "\e[4;32m LOOKING FOR FILES WITH 777 PERMISSION\e[0m"

#enable either option (comment out the other line), but not both.
#option 1: delete files without prompting for comfirmation. Assumes GNU version of find.
#find -type f -perm 0777 -delete
#option 2: ask for confirmation before deleting files. more portable across system.
find -type f -perm 0777 -exam rm -i {} +;
echo ""

THRESHOLD=30
while read line; do
	#the variable stores the file system path as a string
	FILESYSTEM=$(echo $line | awk '{print $1}')
	#this variable stores the use percentage (XX%)
	PERCENTAGE=$(echo $line | awk '{print $5}')
	#use percentage without the % sign.
	USAGE=${PERCENTAGE%?}
	if [ $USAGE -gt $THRESHOLD ]; then
		echo "the remaining available space in $FILESYSTEM is critically low. Used: $PERCENTAGE"
	fi
done < <(df -h --total | grep -vi filesystem) 
 


