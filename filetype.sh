#!/bin/bash

#Short script to determine if a file exists
#Accepts a single argument

# Checks for presence of an argument
if [ "$#" -eq 0 ] ; then
    echo -e "\nError! No filename specified."
    echo -e "\nUsage: $(basename $0) <filename>\n"
    exit 1
fi

filename="$1"

if [ -e "$filename" ] ; then
    echo -e "\nfilename exists"
    if [ -f "$filename" ] ; then
	echo -e "\nFile $filename is a regular file\n"
    elif [ -b "$filename" ] ; then
	echo -e "\nFile $filename is a block file\n"
    elif [ -c "$filename" ] ; then
	echo -e "\nFile $filename is a character file\n"
    elif [ -d "$filename" ] ; then
	echo -e "\nFile $filename is a directory\n"
    else 
	echo -e "\nSorry, I don't know what type of file that is\n"
    fi

if [ -e "$filename" ] ; then
    echo -e "\n$filename exists"
else
    echo -e "\n$filename does exist in the search PATH.\n"
fi

fi
