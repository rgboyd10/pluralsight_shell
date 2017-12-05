#!/bin/bash

if [[ $# -eq 0 ]] ; then 
    echo -e "\nWait.... you didn't enter any arguments\n"
else
    echo -e "\nYou typed the following arguments: $@\n"
fi
