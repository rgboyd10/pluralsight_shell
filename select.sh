#!/bin/bash

educate_user()
{
    trap '' 1 2 3 18 #trap interrupts
    while [ "$answer" != "Sunderland" ] ; do
	read -p "Enter the name of the worlds greatest football team : " answer
	if [ "$answer" = "Sunderland" ] ; then
	    tput clear
	    echo "Correct. And make sure you don't forget!"
	    answer=
	    return
	else
	    echo "Nope. Hint... Sunderland."
        fi
    done
}

options="Sunderland Newcastle Everton Liverpool Spurs"
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
echo -e "\nOh dear! Logging you off and deleting your account!\n"
break
;;
"Everton")
	educate_user
;;
"Liverpool")
	educate_user
;;
"Spurs")
	educate_user
;;
*)
echo -e"\nPlase choose a number from the list above."
;;
esac
done
