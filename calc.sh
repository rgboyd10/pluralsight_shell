#!/bin/bash
#Multiplcation study buddy script for scripting course

echo
echo "****Let me help you with your multiplications****"
echo
read -p "Enter your first number: " value1

echo

read -p "Enter second number: " value2
echo
read -sn1 -p  "Press any key when you're ready to see the answer...."

let answer=$value1*$value2
echo
echo "$answer"
echo $REPLY
