#!/bin/bash
#Script to management snapshots
#Enforces minimum 1 GB free disk space before allowing snap

#Check for root
if [ "$EUID" -ne 0 ] ; then
    echo -e "\nERROR: This script must be ran as root."
    exit 2 #Exit code 2 = not root
fi

#Checks for presence of an argument
if [ "$#" -eq 0 ] ; then
    echo -e "\nError! No argument specified."
    echo -e "\nUsage: $(basename $0) <arg>\n"
    exit 3 #Exit code 3 = no arguments specified
fi

#Functions to determine free space (as an integer) in the vg1 volumn group
check_space()
{
    space=$(vgs --units m | grep -Ev 'VG|centos' | awk '{print $7}' | cut -d "." -f1)
    if [ $space -lt 1024 ] ; then #If space is less than 1GB(1024MB), then exit
	echo -e "\n NOt enough disk space to create snap. Minimum of 1024MB required.  Only ${space}MB available. \n"
	exit 4 #Exit code 4 = note enough disk space
fi
}
