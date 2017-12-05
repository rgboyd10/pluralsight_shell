#!/bin/bash
#This file accepts three parameters and displays them back to the user on the screen.

echo "$# arguments were passed to the script.  They were $@"
exit
echo -e "\nThe first arugment you entered was $1, the second $2, and the third $3\n"
shift
echo "Shifting..."
sleep 1
echo -e "\nThe first arugment you entered was $1, the second $2, and the third $3\n"
