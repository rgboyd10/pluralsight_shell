#!/bin/bash

options="Sunderland Newcastle"
echo -e "\nChoose which of the following English football teams you prefer:\n"

PS3="Enter Choice: "
select choice in $options ; do
echo "REPLY variable is $REPLY"
echo "choice variable is $choice"

case $choice in 
"Sunderland")
	echo -e "\nNice one! You've probably got good judgement skills.\n"
;;
"Newcastle")
echo -e "\nOh dear! Logging you offf and deleting your account!\n"
break
;;
*)
echo -e"\nPlase choose a number from the list above."
;;
esac
done
