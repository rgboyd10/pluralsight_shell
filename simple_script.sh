#Author: Russell Boyd
#Date: 12/4/2017
#Contact details:
#Script usage:
#Change history: (who, when, why...)

#!/bin/bash

#Sample Hello World script for PS scripting course
name=$USER
shortname =$(cat /etc/passwd | grep "$name" | awk -F : '{print $5}' | cut -d " " -f1)
echo
echo -e "Hi $name\n" #Prints short text string to screen
echo -e "Is it OK if I call you $shortname?\n"
