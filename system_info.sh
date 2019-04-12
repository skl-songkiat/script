#!/bin/bash

#sample script written for prepare system
#this script will return the following set of system information 
#hostname information 

echo -e "\e[31;45m***** HOSTNAME INFORMATION ****\e[0m"
hostnamectl
echo ""

#file system disk space usage: 
echo -e "\e[31;45m***** FILE SYSTEM DISK SPACE USAGE ****\e[0m"
df -h 
echo ""

#Free and used memory in the system:
echo -e "\e[31;45m***** FREE AND USED MEMORY *****\e[0m"
free
echo ""

#System uptime and load:
echo -e "\e[31;45m***** SYSTEM UPTIME AND LOAD *****\e[0m"
uptime
echo ""

#Logged in users:
echo -e "\e[31;45m***** CURRENTLY LOGGED IN USERS *****\e[0m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""

echo -e "\e[1;33mDONE.\e[0m"






